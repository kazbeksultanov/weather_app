import 'package:drivers/async.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:weather_app/app/bloc/app/bloc.dart';
import 'package:weather_app/app/ui/kit/debug_services_button.dart';
import 'package:weather_app/app/ui_services/debug_float_panel.dart';

class DebugFloatPanelUIServiceImpl implements DebugFloatPanelUIService {
  OverlaySupportEntry? _overlayEntry;
  OverlaySupportEntry? _overlayEntryBanner;
  bool _flipped = false;

  @override
  Future<void> hideDebugPanel() async {
    _overlayEntry?.dismiss(animate: true);
    _overlayEntryBanner?.dismiss(animate: true);
  }

  @override
  Future<void> showDebugPanel() async {
    _overlayEntry = showOverlay(
      (context, progress) {
        final mediaQuery = MediaQuery.of(context);
        final viewHeight = mediaQuery.size.height - mediaQuery.viewInsets.bottom;

        return Positioned(
          left: _flipped ? -32 * (1 - progress) : null,
          right: !_flipped ? -32 * (1 - progress) : null,
          top: viewHeight / 2 - mediaQuery.padding.top,
          child: AppDebugServicePanel(
            hidePanel: hideDebugPanel,
            showPanel: showDebugPanel,
            onFlip: () async {
              await hideDebugPanel();
              await delay(300);
              _flipped = !_flipped;
              await showDebugPanel();
            },
          ),
        );
      },
      duration: Duration.zero,
    );
    _overlayEntryBanner = showOverlay(
      (context, progress) {
        return Positioned(
          child: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return Banner(
                message: state.appConfig.configs.configName,
                location: BannerLocation.topEnd,
              );
            },
          ),
        );
      },
      duration: Duration.zero,
    );
  }
}
