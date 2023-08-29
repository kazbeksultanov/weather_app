import 'package:drivers/config/lib/models/config.dart';
import 'package:drivers/config/lib/bloc/config_map_view/bloc.dart';
import 'package:drivers/config/lib/ui/widgets/buttons.dart';
import 'package:drivers/config/lib/ui/widgets/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optional/optional.dart';

ConfigMapViewBloc _bloc(BuildContext context) => BlocProvider.of(context);

class ConfigMapViewPage extends StatelessWidget {
  final String title;
  final Map<String, dynamic> data;
  final Future<bool> Function(Map<String, dynamic>) onUpdate;

  const ConfigMapViewPage(this.title, this.data, this.onUpdate);

  static Route route(String title, Map<String, dynamic> data,
          Future<bool> Function(Map<String, dynamic>) onUpdate) =>
      MaterialPageRoute(builder: (context) => ConfigMapViewPage(title, data, onUpdate));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ConfigMapViewBloc(
        title,
        data,
        onUpdate,
      )..add(OnLoad()),
      child: ConfigMapViewPageView(),
    );
  }
}

class ConfigMapViewPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_bloc(context).title)),
      body: BlocBuilder<ConfigMapViewBloc, ConfigMapViewState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const CircularProgressIndicator();
          } else if (state is LoadingErrorState) {
            return AppLoadingError(
              state.error,
              onRetry: () => _bloc(context).add(OnLoad()),
            );
          } else if (state is LoadedState) {
            return _Loaded(state);
          } else {
            throw StateError('Unknown state: $state');
          }
        },
      ),
    );
  }
}

class _Loaded extends StatelessWidget {
  final LoadedState state;

  const _Loaded(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MapEntry<String, dynamic>> data = state.data.entries.toList();

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final MapEntry<String, dynamic> item = data[index];
        return _ConfigValueEntry(
          id: item.key,
          title: item.key.replaceAll(RegExp('_'), ' '),
          value: item.value,
        );
      },
    );
  }
}

class _ConfigValueEntry extends StatelessWidget {
  final String id;
  final String title;
  // ignore: prefer_typing_uninitialized_variables, type_annotate_public_apis
  final value;

  const _ConfigValueEntry({
    required this.id,
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (ConfigAdapter.getValueType(value)) {
      case ConfigType.map:
        return _MapValueEntry(id: id, title: title, value: value);
      case ConfigType.list:
        return _ListValueEntry(id: id, title: title, value: value);

      case ConfigType.bool:
        return _BoolValueEntry(id: id, title: title, value: value);
      default:
        return _StringValueEntry(id: id, title: title, value: value);
    }
  }
}

class _ListValueEntry extends StatelessWidget {
  final String id;
  final String title;
  final List value;

  const _ListValueEntry({
    required this.id,
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ConfigListDataKey.tryFromJson(title);
    return AppNavigatorButton(
      title: data?.key ?? title,
      subTitle: Optional.of('${value.length} items'),
      onTap: () => _bloc(context).add(OnUpdateConfigValueClick(id, value)),
    );
  }
}

class _MapValueEntry extends StatelessWidget {
  final String id;
  final String title;
  final Map<String, dynamic> value;

  const _MapValueEntry({
    required this.id,
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigatorButton(
      title: title,
      subTitle: Optional.of('${value.length} items'),
      onTap: () => _bloc(context).add(OnUpdateConfigValueClick(id, value)),
    );
  }
}

class _StringValueEntry extends StatelessWidget {
  final String id;
  final String title;
  final dynamic value;

  const _StringValueEntry({
    required this.id,
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigatorButton(
      title: title,
      subTitle: Optional.of(value.toString()),
      onTap: () => _bloc(context).add(OnUpdateConfigValueClick(id, value)),
    );
  }
}

class _BoolValueEntry extends StatelessWidget {
  final String id;
  final String title;
  final bool value;

  const _BoolValueEntry({
    required this.id,
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppStackedSwitch(
      title: title,
      isChecked: value,
      onChanged: (_) => _bloc(context).add(OnUpdateConfigValueClick(id, value, newValue: !value)),
    );
  }
}
