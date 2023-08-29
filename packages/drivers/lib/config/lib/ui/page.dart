import 'package:drivers/config/lib/bloc/bloc.dart';
import 'package:drivers/config/lib/ui/widgets/buttons.dart';
import 'package:drivers/config/lib/ui/widgets/error.dart';
import 'package:drivers/config/lib/ui/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optional/optional.dart';

DebugServicesBloc _bloc(BuildContext context) => BlocProvider.of(context);

class DebugServicesPageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DebugServicesBloc()..add(OnLoad()),
      child: DebugServicesPage(),
    );
  }
}

class DebugServicesPage extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => DebugServicesPageProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Config services')),
      body: BlocBuilder<DebugServicesBloc, DebugServicesState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const CircularProgressIndicator();
          } else if (state is LoadingErrorState) {
            return AppLoadingError(
              state.error,
              onRetry: () => _bloc(context).add(OnLoad()),
            );
          } else if (state is LoadedState) {
            return WillPopScope(
              onWillPop: () async {
                if (state.updated) {
                  final result = await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Theme.of(context).cardColor,
                        content: const Text(
                          'Config was changed, would you like to reset all and restart the application?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      );
                    },
                  );
                  if (result != null && result) {
                    _bloc(context).add(OnReset());
                    return false;
                  }
                }
                return true;
              },
              child: _Loaded(state),
            );
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const _Title('Predefined config'),
          Column(
            children: state.configs
                .map((e) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        width: double.infinity,
                        child: AppPrimaryButton(
                          e.name,
                          isLoading: (state is AwaitingPredefinedConfig) &&
                              (state as AwaitingPredefinedConfig).id == e.name,
                          onPressed: state is AwaitingState || (state.currentConfig == e.value)
                              ? null
                              : () => _bloc(context).add(OnUpdateConfig(e.name, e.value)),
                        ),
                      ),
                    ))
                .toList(),
          ),
          const _Title('General Information'),
          Column(
            children: state.data
                .map(
                  (e) => _InfoEntry(title: e.name, value: e.value),
                )
                .toList(),
          ),
          AppNavigatorButton(
            title: 'Config',
            subTitle: Optional.of('${state.currentConfig?.container.values.length} items'),
            onTap: () =>
                _bloc(context).add(OnOpenConfigClick(state.currentConfig!.container.values)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: AppPrimaryButton(
                'Reset All',
                backgroundEnabledColor: Theme.of(context).colorScheme.error,
                onPressed: () => _bloc(context).add(OnReset()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: AppTitleText(title),
    );
  }
}

class _InfoEntry extends StatelessWidget {
  final String? title;
  final String? value;

  const _InfoEntry({Key? key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _bloc(context).add(OnCopyClick(value)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(title ?? ''),
              AppSubtitleText(value.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
