import 'package:flutter/cupertino.dart';

@immutable
abstract class LoadingErrorEvent {}

class OnStartError extends LoadingErrorEvent {}

class OnRetry extends LoadingErrorEvent {}

class OnErrorDetails extends LoadingErrorEvent {}

class OnDispose extends LoadingErrorEvent {}
