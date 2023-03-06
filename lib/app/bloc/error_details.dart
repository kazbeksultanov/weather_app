import 'package:drivers/dependencies.dart';
import 'package:drivers/models/app_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/strings.dart';
import 'package:weather_app/app/app_text.dart';
import 'package:weather_app/app/services/impl/copy.dart';
import 'package:weather_app/app/ui/kit/page.dart';
import 'package:weather_app/app/ui_services/notifications/toast.dart';

import 'pages/error_details/error_details_bloc.dart';

ErrorDetailsBloc _bloc(context) => BlocProvider.of(context);

class ErrorDetailsPageProvider extends StatelessWidget {
  final AppError error;

  const ErrorDetailsPageProvider(this.error, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ErrorDetailsBloc(
        error,
        resolveDependency<ToastNotifications>(),
        CopyUIServiceImpl(context),
      ),
      child: AppPage<ErrorDetailsState, ErrorDetailsBloc>(
        child: ErrorDetailsPage(error),
      ),
    );
  }
}

class ErrorDetailsPage extends StatelessWidget {
  static Route route(AppError error) =>
      MaterialPageRoute(builder: (context) => ErrorDetailsPageProvider(error));

  final AppError error;

  const ErrorDetailsPage(this.error, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.errorDetails),
        actions: [
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () => _bloc(context).add(OnCopyClick()),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: AppTextTypes.normalSmall.widget(error.getReport(context)),
              ),
              if (error.stackTrace != null)
                _Spoiler(
                  showTitle: strings.showStackTrace,
                  hideTitle: strings.hideStackTrace,
                  child: AppTextTypes.normalSmall.widget(error.stackTrace.toString()),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Spoiler extends StatefulWidget {
  final String showTitle;
  final String hideTitle;
  final Widget child;

  const _Spoiler({
    required this.child,
    required this.showTitle,
    required this.hideTitle,
    Key? key,
  }) : super(key: key);

  @override
  _SpoilerState createState() => _SpoilerState();
}

class _SpoilerState extends State<_Spoiler> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextTypes.normalSmall.widget(
                    _isVisible ? widget.hideTitle : widget.showTitle,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        if (_isVisible)
          Padding(
            padding: const EdgeInsets.all(16),
            child: widget.child,
          ),
      ],
    );
  }
}
