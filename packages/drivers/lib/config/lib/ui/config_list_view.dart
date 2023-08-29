import 'package:drivers/config/lib/models/config.dart';
import 'package:drivers/config/lib/ui/widgets/buttons.dart';
import 'package:drivers/config/lib/ui/widgets/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optional/optional.dart';

import '../bloc/config_list_view/bloc.dart';

ConfigListViewBloc _bloc(BuildContext context) => BlocProvider.of(context);

class ConfigListViewPageProvider extends StatelessWidget {
  final String title;
  final List data;
  final Future<bool> Function(List) onUpdate;
  final ConfigListDataKey? defaultItem;

  const ConfigListViewPageProvider(this.title, this.data, this.onUpdate, {this.defaultItem});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ConfigListViewBloc(
        title,
        data,
        onUpdate,
        defaultItem,
      )..add(OnLoad()),
      child: ConfigListViewPage(),
    );
  }
}

class ConfigListViewPage extends StatelessWidget {
  static Route route(String title, List data, Future<bool> Function(List) onUpdate,
          {ConfigListDataKey? defaultItem}) =>
      MaterialPageRoute(
          builder: (context) =>
              ConfigListViewPageProvider(title, data, onUpdate, defaultItem: defaultItem));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_bloc(context).title),
        actions: [
          if (_bloc(context).defaultItem != null)
            IconButton(
                onPressed: () => _bloc(context).add(const OnAddClick()),
                icon: const Icon(Icons.add))
          else
            const SizedBox()
        ],
      ),
      body: BlocBuilder<ConfigListViewBloc, ConfigListViewState>(
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
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: state.data.length,
      itemBuilder: (context, index) {
        final item = state.data[index];
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (_) {
            _bloc(context).add(OnDeleteClick(index));
          },
          child: _ConfigValueEntry(
            id: index,
            value: item,
          ),
        );
      },
    );
  }
}

class _ConfigValueEntry extends StatelessWidget {
  final int id;
  // ignore: prefer_typing_uninitialized_variables, type_annotate_public_apis
  final value;

  const _ConfigValueEntry({
    required this.id,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (ConfigAdapter.getValueType(value)) {
      case ConfigType.map:
        return _MapValueEntry(id: id, value: value);
      case ConfigType.list:
        return _ListValueEntry(id: id, value: value);

      case ConfigType.bool:
        return _BoolValueEntry(id: id, value: value);
      default:
        return _StringValueEntry(id: id, value: value);
    }
  }
}

class _ListValueEntry extends StatelessWidget {
  final int id;
  final List value;

  const _ListValueEntry({
    required this.id,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigatorButton(
      title: '$id index, type List',
      subTitle: Optional.of('${value.length} items'),
      onTap: () => _bloc(context).add(OnUpdateConfigValueClick(id, value)),
    );
  }
}

class _MapValueEntry extends StatelessWidget {
  final int id;
  final Map<String, dynamic> value;

  const _MapValueEntry({
    required this.id,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigatorButton(
      title: '$id index, type Map',
      subTitle: Optional.of('${value.length} items'),
      onTap: () => _bloc(context).add(OnUpdateConfigValueClick(id, value)),
    );
  }
}

class _StringValueEntry extends StatelessWidget {
  final int id;
  final dynamic value;

  const _StringValueEntry({
    required this.id,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigatorButton(
      title: '$id index, type String',
      subTitle: Optional.of(value.toString()),
      onTap: () => _bloc(context).add(OnUpdateConfigValueClick(id, value)),
    );
  }
}

class _BoolValueEntry extends StatelessWidget {
  final int id;
  final bool value;

  const _BoolValueEntry({
    required this.id,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppStackedSwitch(
      title: '$id index, type Bool',
      isChecked: value,
      onChanged: (_) => _bloc(context).add(OnUpdateConfigValueClick(id, value, newValue: !value)),
    );
  }
}
