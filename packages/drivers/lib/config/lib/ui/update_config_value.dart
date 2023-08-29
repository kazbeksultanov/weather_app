import 'package:drivers/config/lib/bloc/update_config_value/bloc.dart';
import 'package:drivers/config/lib/ui/widgets/buttons.dart';
import 'package:drivers/config/lib/ui/widgets/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

UpdateConfigValueBloc _bloc(BuildContext context) => BlocProvider.of(context);

class DebugUpdateConfigValuePageProvider<T> extends StatelessWidget {
  const DebugUpdateConfigValuePageProvider(this.name, this.value, this.onUpdate);
  final String name;
  final T value;
  final Function(T) onUpdate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UpdateConfigValueBloc<T>(
        name,
        value,
        onUpdate,
      )..add(OnLoad()),
      child: DebugUpdateConfigValuePage(),
    );
  }
}

class DebugUpdateConfigValuePage<T> extends StatelessWidget {
  static Route route<T>(String name, T value, Function(T) onUpdate) => MaterialPageRoute(
      builder: (context) => DebugUpdateConfigValuePageProvider<T>(name, value, onUpdate));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<UpdateConfigValueBloc, UpdateConfigValueState>(
          builder: (context, state) {
            if (state is LoadedState) {
              return Text(state.name);
            } else {
              return const Text('...');
            }
          },
        ),
      ),
      body: BlocBuilder<UpdateConfigValueBloc, UpdateConfigValueState>(
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

class _Loaded extends StatefulWidget {
  final LoadedState state;

  const _Loaded(this.state, {Key? key}) : super(key: key);

  @override
  _LoadedState createState() => _LoadedState();
}

class _LoadedState extends State<_Loaded> {
  TextEditingController? _controller;
  bool? valueBool;

  @override
  void initState() {
    _controller = TextEditingController();
    _controller!.text = widget.state.value;

    if (widget.state.value.toLowerCase().trim() == 'true') {
      valueBool = true;
    } else if (widget.state.value.toLowerCase().trim() == 'false') {
      valueBool = false;
    } else {
      valueBool = null;
    }

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(controller: _controller),
          if (valueBool != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  const Expanded(child: Text('Switch the bool value')),
                  Switch(
                      value: valueBool!,
                      onChanged: (value) {
                        valueBool = value;
                        _controller!.text = value.toString();
                        setState(() {});
                      }),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              width: double.infinity,
              child: AppPrimaryButton(
                'Update',
                isLoading: widget.state is AwaitingSetValueState,
                onPressed: () => _bloc(context).add(OnUpdateValue(_controller!.text)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
