import 'dart:async';

import 'package:drivers/bloc.dart';
import 'package:drivers/dependencies.dart';
import 'package:drivers/exceptions/common.dart';
import 'package:drivers/models/app_error.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/app/bloc/app/bloc.dart';
import 'package:weather_app/app/report.dart';
import 'package:weather_app/app/services/errors.dart';
import 'package:weather_app/app/ui_services/notifications/impl/error_flutter_toast.dart';

class AppPage<S extends PageState, B extends PageBloc<dynamic, S>> extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final void Function(BuildContext context, S state)? onState;
  final void Function(BuildContext context)? onResume;
  final void Function(BuildContext context)? didPop;
  final void Function(BuildContext context)? didPopNext;
  final void Function(BuildContext context)? didPush;
  final void Function(BuildContext context)? didPushNext;

  const AppPage({
    required this.child,
    this.onState,
    this.onResume,
    this.didPop,
    this.didPopNext,
    this.didPush,
    this.didPushNext,
    Key? key,
    this.backgroundColor,
  }) : super(key: key);

  @override
  State createState() => _AppPageState<S, B>();
}

// ignore_for_file: prefer_mixin
class _AppPageState<S extends PageState, B extends PageBloc<dynamic, S>>
    extends State<AppPage<S, B>> with RouteAware {
  StreamSubscription<S>? _subscription;
  final _key = ErrorHandlerKey();
  final _errorService = resolveDependency<ErrorsService>();
  late LifecycleObserver _lifecycleObserver;

  @override
  void initState() {
    super.initState();
    _lifecycleObserver = LifecycleObserver(
      onResume: () async {
        widget.onResume?.call(context);
      },
    );
    WidgetsBinding.instance.addObserver(_lifecycleObserver);

    _errorService.registerErrorHandler(
      _key,
      (e, stackTrace) {
        final errorsNotifications = ErrorsNotificationsFlutterToastUIService();
        BlocProvider.of<AppBloc>(context).add(OnError(e, stackTrace));

        if (e is LogicException) {
          errorsNotifications.showError(AppError(e, stackTrace));
        } else {
          errorsNotifications.showError(AppError(e, stackTrace));
          reportError(e, stackTrace);
        }

        return false;
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (ModalRoute.of(context) != null) {
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    }
    try {
      final bloc = BlocProvider.of<B>(context);
      _subscription = bloc.stream.listen((state) async {
        if (mounted && widget.onState != null) {
          widget.onState!(context, state);
        }
      });
    } catch (_) {}
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    WidgetsBinding.instance.removeObserver(_lifecycleObserver);
    _subscription?.cancel();

    _errorService.unregisterErrorHandler(_key);
    super.dispose();
  }

  @override
  void didPop() {
    widget.didPop?.call(context);
    super.didPop();
  }

  @override
  void didPopNext() {
    widget.didPopNext?.call(context);
    super.didPopNext();
  }

  @override
  void didPush() {
    widget.didPush?.call(context);
    super.didPush();
  }

  @override
  void didPushNext() {
    widget.didPushNext?.call(context);
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class LifecycleObserver extends WidgetsBindingObserver {
  final AsyncCallback? onResume;
  final AsyncCallback? suspendingCallBack;

  LifecycleObserver({
    this.onResume,
    this.suspendingCallBack,
  });

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (onResume != null) {
          await onResume!();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        break;
    }
  }
}
