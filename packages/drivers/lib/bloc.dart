import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

abstract class PageEvent extends Equatable {
  const PageEvent();
}

abstract class PageBloc<E extends PageEvent, S extends PageState> extends Bloc<E, S> {
  bool _isClosed = false;

  PageBloc(S initialState) : super(initialState);

  @override
  void add(E event) {
    if (!_isClosed) {
      super.add(event);
    }
  }

  @override
  Future<void> close() async {
    _isClosed = true;
    return super.close();
  }
}

T bloc<T extends Bloc>(BuildContext context) => BlocProvider.of<T>(context);

BlocBuilder<B, S> blocState<B extends BlocBase<S>, S>(
  BlocWidgetBuilder<S> builder,
) =>
    BlocBuilder(builder: builder);

BlocBuilder<B, S> blocWhenState<B extends BlocBase<S>, S, SS extends S>(
  BlocWidgetBuilder<SS> builder,
) =>
    BlocBuilder(
      builder: (context, state) {
        if (state is SS) {
          return builder(context, state);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
