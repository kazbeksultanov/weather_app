import 'package:drivers/alice/lib/alice.dart';
import 'package:drivers/config/lib/core/debug_service.dart';
import 'package:drivers/dependencies.dart';
import 'package:drivers/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/bloc/app/bloc.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/models/common.dart';
import 'package:weather_app/app/services/debug.dart';
import 'package:weather_app/app/ui/kit/icons.dart';

class AppDebugServicePanel extends StatefulWidget {
  final VoidCallback? onFlip;
  final Future<void> Function()? hidePanel;
  final Future<void> Function()? showPanel;

  const AppDebugServicePanel({Key? key, this.onFlip, this.hidePanel, this.showPanel})
      : super(key: key);

  @override
  State<AppDebugServicePanel> createState() => _AppDebugServicePanelState();
}

class _AppDebugServicePanelState extends State<AppDebugServicePanel> {
  bool isOpen = true;
  final _appConfig = resolveDependency<AppConfig>();

  final configServiceCore = resolveDependency<DebugConfigService>();

  Future<void> closeOpenPanel() async {
    if (widget.hidePanel != null && widget.showPanel != null) {
      if (isOpen) {
        await widget.hidePanel?.call();
        isOpen = false;
      } else {
        await widget.showPanel?.call();
        isOpen = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _ThemeToggleIconButton(),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: widget.onFlip,
          child: Container(
            height: 32,
            width: 32,
            color: Colors.deepOrangeAccent,
            child: const Center(
              child: Icon(
                Icons.flip,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        if (_appConfig.configs.apiLoggingAliceEnabled)
          _NavigateDebugButton(
            const AppMenuIcon(color: Colors.black),
            onCloseOpen: closeOpenPanel,
            onTap: () async {
              final alice = resolveDependency<Alice>();
              await alice.showInspector();
            },
          )
        else
          const SizedBox(),
        _NavigateDebugButton(
          const Icon(
            Icons.bug_report,
            size: 24,
            color: Colors.black,
          ),
          onCloseOpen: closeOpenPanel,
          onTap: () async {
            await ConfigService.openService(await configServiceCore.getCore());
          },
        ),
        _NavigateDebugButton(
          const Icon(
            Icons.manage_search,
            size: 24,
            color: Colors.black,
          ),
          onCloseOpen: closeOpenPanel,
          onTap: () async {
            await Logger.showLogs(context);
          },
        ),
      ],
    );
  }
}

class _NavigateDebugButton extends StatelessWidget {
  const _NavigateDebugButton(this.icon, {required this.onCloseOpen, required this.onTap, Key? key})
      : super(key: key);
  final Future<void> Function() onTap;
  final Future<void> Function() onCloseOpen;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: GestureDetector(
        onTap: () async {
          await onCloseOpen();
          await onTap();
          await onCloseOpen();
        },
        child: Container(
          height: 60,
          width: 32,
          color: Colors.deepOrangeAccent,
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}

class _ThemeToggleIconButton extends StatefulWidget {
  @override
  _ThemeToggleIconButtonState createState() => _ThemeToggleIconButtonState();
}

class _ThemeToggleIconButtonState extends State<_ThemeToggleIconButton> {
  bool _isDark = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isDark = !_isDark;
          if (_isDark) {
            BlocProvider.of<AppBloc>(context).add(OnUpdateTheme(AppThemeVariant.dark));
          } else {
            BlocProvider.of<AppBloc>(context).add(OnUpdateTheme(AppThemeVariant.light));
          }
        });
      },
      child: Container(
        height: 32,
        width: 32,
        color: Colors.deepOrangeAccent,
        child: Center(
          child: _isDark
              ? const AppSunIcon(color: Colors.black)
              : const AppMoonIcon(color: Colors.black),
        ),
      ),
    );
  }
}
