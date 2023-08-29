import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';

class OnlineConnectionChecker {
  final List<AddressCheckOptions> apiAddresses;

  OnlineConnectionChecker({this.apiAddresses = const []});

  static const Duration defaultTimeout = Duration(seconds: 10);

  static const Duration defaultInterval = Duration(seconds: 10);

  static final List<AddressCheckOptions> defaultAddresses = List<AddressCheckOptions>.unmodifiable(
    <AddressCheckOptions>[
      AddressCheckOptions(simpleAddress: 'https://www.cloudflare.com/'),
      AddressCheckOptions(simpleAddress: 'https://www.google.com/'),
      AddressCheckOptions(simpleAddress: 'https://www.opendns.com/'),
    ],
  );

  Future<AddressCheckResult> isHostReachable(AddressCheckOptions options) async {
    try {
      final uri = Uri.parse(options.simpleAddress);
      final result = await InternetAddress.lookup(uri.host);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return AddressCheckResult(
          options,
          isSuccess: true,
        );
      } else {
        return AddressCheckResult(
          options,
          isSuccess: false,
        );
      }
    } catch (_) {
      return AddressCheckResult(
        options,
        isSuccess: false,
      );
    }
  }

  Future<bool> get hasGeneralConnection async {
    final Completer<bool> result = Completer<bool>();
    int length = defaultAddresses.length;

    for (final AddressCheckOptions addressOptions in defaultAddresses) {
      await isHostReachable(addressOptions).then(
        (request) {
          // debugPrint('OnlineConnectionChecker - '
          //     'result: ${request.isSuccess}, '
          //     'address:${request.options.simpleAddress}');
          length -= 1;
          if (!result.isCompleted) {
            if (request.isSuccess) {
              result.complete(true);
            } else if (length == 0) {
              result.complete(false);
            }
          }
        },
      );
    }

    return result.future;
  }

  Future<bool> get hasConnectionToApis async {
    final List<Future<AddressCheckResult>> futures = [];
    for (final AddressCheckOptions addressOptions in apiAddresses) {
      futures.add(isHostReachable(addressOptions));
    }
    for (final e in await Future.wait(futures)) {
      debugPrint('OnlineConnectionChecker - '
          'result: ${e.isSuccess}, '
          'address:${e.options.simpleAddress}');
      if (!e.isSuccess) {
        return false;
      }
    }

    return true;
  }
}

class AddressCheckOptions {
  AddressCheckOptions({
    required this.simpleAddress,
  });

  final String simpleAddress;

  @override
  String toString() => 'AddressCheckOptions($simpleAddress)';
}

class AddressCheckResult {
  AddressCheckResult(
    this.options, {
    required this.isSuccess,
  });

  final AddressCheckOptions options;

  final bool isSuccess;

  @override
  String toString() => 'AddressCheckResult($options, $isSuccess)';
}
