import 'package:bloc/bloc.dart';
import 'package:drivers/log.dart';
import 'package:drivers/logger/logger.dart';

class LogsListBloc extends Bloc<LogsListEvent, LogsListState> {
  final LogUseCase logUseCase;

  LogsListBloc(this.logUseCase) : super(Loaded([])) {
    on<OnShareClick>(onShare);
    on<OnClearClick>(onClear);
    on<Load>(load);
  }

  Future<void> load(Load event, Emitter emit) async {
    try {
      final logs = await logUseCase.getLogs();
      logs.sort((a, b) => b.dateTime.compareTo(a.dateTime));
      emit(Loaded(logs));
    } catch (e, stack) {
      logError('load logs', e, stackTrace: stack);
    }
  }

  Future<void> onShare(OnShareClick event, Emitter emit) async {
    try {
      await logUseCase.shareLogs();
    } catch (e, stack) {
      logError('share logs', e, stackTrace: stack);
    }
  }

  Future<void> onClear(OnClearClick event, Emitter emit) async {
    try {
      await logUseCase.clearLog();
      add(Load());
    } catch (e, stack) {
      logError('clear logs', e, stackTrace: stack);
    }
  }
}
