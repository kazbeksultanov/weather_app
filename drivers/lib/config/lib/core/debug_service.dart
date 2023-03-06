import 'package:drivers/config/lib/core/debug_service_core.dart';
import 'package:drivers/config/lib/ui/page.dart';
import 'package:flutter/material.dart';

abstract class ConfigService {
  static ConfigServiceCore? _debugCore;
  static bool hasUpdate = false;

  static ConfigServiceCore get core {
    if (_debugCore == null) {
      throw Exception('Core not initial');
    }
    return _debugCore!;
  }

  static set core(ConfigServiceCore value) {
    _debugCore = value;
  }

  static void init() {
    hasUpdate = false;
  }

  static Future<void> openService(ConfigServiceCore core) async {
    _debugCore = core;
    final context = core.context;
    if (context == null) {
      throw Exception('Context debug service not found');
    }
    await Navigator.push(context, DebugServicesPage.route());
  }

  static Future<void> push(Route route) async {
    final context = core.context;
    if (context == null) {
      throw Exception('Context debug service not found');
    }
    await Navigator.push(context, route);
  }

  static Future<void> pop() async {
    final context = core.context;
    if (context == null) {
      throw Exception('Context debug service not found');
    }
    Navigator.pop(context);
    // _debugCore = null;
  }

  static Future<void> showNotification(String message) async {
    final context = core.context;
    if (context == null) {
      throw Exception('Context debug service not found');
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}
