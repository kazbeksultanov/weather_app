import 'dart:async';

import 'package:drivers/exceptions/common.dart';
import 'package:drivers/log.dart';

import 'transaction.dart';
import 'transaction_state_storage.dart';

enum TransactionStatus {
  awaiting,
  cancelled,
  failed,
  success,
  removed,
}

class TransactionCancelled extends CancelledException {}

abstract class TransactionFactory {
  Future<Transaction> createTransactionById(String? id);
}

class TransactionsManager {
  final List<Transaction> _transactions = [];
  final Map<String, StreamSubscription<void>> _subscriptions = {};
  final Map<String, Completer> _completers = {};
  final Map<String, DateTime> _startTime = {};
  final TransactionStateStorage _transactionStateStorage;
  final TransactionFactory _transactionFactory;

  TransactionsManager(
    this._transactionStateStorage,
    this._transactionFactory,
  );

  void _log(Transaction transaction, String message) {
    log(
      'Transaction',
      '${transaction.name} (${transaction.id}): $message',
    );
  }

  Future<void> recoveryState() async {
    final transactionStates = await _transactionStateStorage.loadState();

    for (final transactionState in transactionStates) {
      final transaction = await _transactionFactory.createTransactionById(
        transactionState.id,
      );

      switch (transactionState.status) {
        case TransactionStatus.awaiting:
        case TransactionStatus.cancelled:
        case TransactionStatus.failed:
          await transaction.restoreStateFromBackup();
          await transaction.clearBackupState();
          await _removeTransaction(transaction);
          break;

        case TransactionStatus.removed:
        case TransactionStatus.success:
          await transaction.clearBackupState();
          await _removeTransaction(transaction);
          break;
      }
    }
  }

  Future<void> executeTransaction(
    Transaction transaction, [
    Object? action,
  ]) async {
    await cancelTransaction(transaction);
    final completer = Completer();
    await _updateTransactionState(transaction, TransactionStatus.awaiting);

    final sub = transaction.execute(action).listen(
      (status) async {
        if (status == TransactionExecutionStatus.finished) {
          await _updateTransactionState(transaction, TransactionStatus.success);
          completer.complete();
          await _removeTransaction(transaction);
        }
      },
      onError: (e, stackTrace) async {
        await transaction.failed();
        await _updateTransactionState(transaction, TransactionStatus.failed);
        await _removeTransaction(transaction);
        completer.completeError(e, stackTrace);
      },
      cancelOnError: true,
    );

    await _pushTransaction(transaction, sub, completer);
    return completer.future;
  }

  Future<void> waitTransaction(String transactionId) async {
    try {
      if (_completers.containsKey(transactionId)) {
        final completer = _completers[transactionId]!;

        if (!completer.isCompleted) {
          await completer.future;
        }
      }
    } on TransactionCancelled catch (_) {
      // Nothing
    }
  }

  bool isTransactionActive(String transactionId) {
    if (_completers.containsKey(transactionId)) {
      final completer = _completers[transactionId]!;
      return !completer.isCompleted;
    } else {
      return false;
    }
  }

  Future<bool> isTransactionLeftOver(String transactionId, Duration ttl) async {
    if (_startTime.containsKey(transactionId)) {
      final startTime = _startTime[transactionId]!;
      final currentTime = DateTime.now();

      return currentTime.difference(startTime) > ttl;
    } else {
      return true;
    }
  }

  Future<void> _updateTransactionState(
    Transaction transaction,
    TransactionStatus status,
  ) async {
    switch (status) {
      case TransactionStatus.awaiting:
        await transaction.backupState();
        break;
      case TransactionStatus.cancelled:
        await transaction.restoreStateFromBackup();
        break;
      case TransactionStatus.failed:
        _log(transaction, 'restore state from backup');
        await transaction.restoreStateFromBackup();
        break;
      case TransactionStatus.success:
        break;
      case TransactionStatus.removed:
        await transaction.clearBackupState();
        break;
    }

    if (status == TransactionStatus.removed) {
      await _transactionStateStorage.delete(transaction.id);
    } else {
      await _transactionStateStorage.updateStatus(transaction.id, status);
    }
  }

  Future<void> _pushTransaction(
    Transaction transaction,
    StreamSubscription<void> sub,
    Completer completer,
  ) async {
    _transactions.add(transaction);
    _subscriptions[transaction.id] = sub;
    _completers[transaction.id] = completer;
    _startTime[transaction.id] = DateTime.now();
  }

  Future<void> _removeTransaction(Transaction transaction) async {
    _subscriptions.removeWhere((key, value) => key == transaction.id);
    _transactions.removeWhere((it) => it.id == transaction.id);
    _completers.removeWhere((key, value) => key == transaction.id);
    _startTime.removeWhere((key, value) => key == transaction.id);
    await _updateTransactionState(transaction, TransactionStatus.removed);
  }

  Future<void> cancelAll() async {
    for (final transaction in _transactions) {
      await cancelTransaction(transaction);
    }
  }

  Future<void> cancelTransaction(Transaction transaction) async {
    if (!_subscriptions.containsKey(transaction.id)) {
      return;
    }

    _log(transaction, 'cancel');

    final sub = _subscriptions[transaction.id]!;
    final completer = _completers[transaction.id]!;

    await transaction.cancel();
    await sub.cancel();

    await _updateTransactionState(transaction, TransactionStatus.cancelled);
    await _removeTransaction(transaction);

    if (!completer.isCompleted) {
      completer.completeError(TransactionCancelled());
    }
  }
}
