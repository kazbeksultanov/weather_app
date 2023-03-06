import 'package:drivers/exceptions/common.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

T resolveDependency<T extends Object>({String? instanceName}) =>
    GetIt.instance.get<T>(instanceName: instanceName);

T? resolveDependencyOrNull<T extends Object>({String? instanceName}) {
  try {
    return GetIt.instance.get<T>(instanceName: instanceName);
  } catch (_) {
    return null;
  }
}

void pushDependency<T extends Object>(T instance, {String? instanceName}) =>
    GetIt.instance.registerSingleton(instance, instanceName: instanceName);

void removeDependency<T extends Object>(T instance, {String? instanceName}) =>
    GetIt.instance.unregister(instance: instance, instanceName: instanceName);

const kAppNavigatorId = 'kAppNavigatorIdKey';

void pushGlobalKeyNavigatorState(GlobalKey<NavigatorState> globalKey) {
  pushDependency(globalKey, instanceName: kAppNavigatorId);
}

GlobalKey<NavigatorState> get getGlobalKeyNavigatorState {
  final navigator = resolveDependencyOrNull<GlobalKey<NavigatorState>>(
    instanceName: kAppNavigatorId,
  );
  if (navigator != null) {
    return navigator;
  }
  throw ContextNotFoundException();
}

BuildContext get getCurrentContext {
  return getGlobalKeyNavigatorState.currentContext!;
}
