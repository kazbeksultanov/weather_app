import 'dart:async';

import 'package:drivers/config/lib/ui/widgets/error.dart';
import 'package:drivers/config/lib/ui/widgets/loading.dart';
import 'package:drivers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/strings.dart';
import 'package:weather_app/app/app_keys.dart';
import 'package:weather_app/app/app_text.dart';
import 'package:weather_app/app/ui/colors.dart';
import 'package:weather_app/app/ui/kit/page.dart';
import 'package:weather_app/pages/weather_dashboard/bloc/weather_dashboard_bloc.dart';
import 'package:weather_app/pages/weather_dashboard/models.dart';

WeatherDashboardBloc _bloc(BuildContext context) => BlocProvider.of(context);
const _pageKey = AppKeys.pageWeatherDashboard;

class WeatherDashboardPageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WeatherDashboardBloc(
        resolveDependency(),
        resolveDependency(),
        resolveDependency(),
      )..add(OnLoad()),
      child: AppPage<WeatherDashboardState, WeatherDashboardBloc>(
        key: _pageKey.key(),
        didPopNext: (c) {
          _bloc(c).add(OnRefresh(Completer()));
        },
        child: WeatherDashboardPage(),
      ),
    );
  }
}

class WeatherDashboardPage extends StatelessWidget {
  static Route route({VoidCallback? onOpen}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: _pageKey.name),
      builder: (context) {
        if (onOpen != null) {
          onOpen();
        }
        return WeatherDashboardPageProvider();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.title),
        actions: [
          BlocBuilder<WeatherDashboardBloc, WeatherDashboardState>(
            builder: (context, state) {
              if (state is LoadedState) {
                if (state.isNoConnection) {
                  return const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.wifi_off_rounded,
                      color: Colors.red,
                    ),
                  );
                } else {
                  return IconButton(
                    onPressed: () => _bloc(context).add(OnSearchClick()),
                    icon: const Icon(Icons.search),
                  );
                }
              }

              return const SizedBox();
            },
          ),
        ],
      ),
      body: BlocBuilder<WeatherDashboardBloc, WeatherDashboardState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const AppLoadingIndicator();
          } else if (state is LoadingErrorState) {
            return AppLoadingError(
              state.error,
              onRetry: () => _bloc(context).add(OnLoad()),
            );
          } else if (state is LoadedState) {
            return _Loaded(state);
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class _Loaded extends StatelessWidget {
  final LoadedState loadedState;

  const _Loaded(this.loadedState, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    return loadedState.data.cities.isNotEmpty
        ? RefreshIndicator(
            onRefresh: () async {
              final completer = Completer<void>();
              _bloc(context).add(OnRefresh(completer));
              await completer.future.timeout(const Duration(seconds: 45), onTimeout: () => true);
            },
            child: ListView(
              shrinkWrap: false,
              children: [
                if (loadedState.data.selectedCity != null)
                  _MainCityWeather(loadedState.data.selectedCity!),
                const SizedBox(height: 16),
                Center(child: AppTextTypes.normalMedium.widget(strings.cities)),
                const SizedBox(height: 8),
                ...loadedState.data.cities.map(_CityWeatherItemUi.new).toList(),
              ],
            ),
          )
        : Center(
            child: AppTextTypes.normalSmall.widget(
            strings.noSelectedCitiesYet,
            textAlign: TextAlign.center,
          ));
  }
}

class _CityWeatherItemUi extends StatelessWidget {
  final CityWeatherInfo data;

  const _CityWeatherItemUi(this.data);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      child: Material(
        color: data.isSelected ? colors.primary : colors.tagBorder,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: InkWell(
          onTap: () => _bloc(context).add(OnSelectCityClick(data.id)),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextTypes.normalSmall.widget(data.city),
                      AppTextTypes.normalVerySmall.widget(data.country),
                    ],
                  ),
                ),
                AppTextTypes.normalMedium.widget(data.temperature),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MainCityWeather extends StatelessWidget {
  final CityWeatherInfo data;

  const _MainCityWeather(this.data);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.tagBorder,
        borderRadius: const BorderRadius.all(Radius.circular(26)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppTextTypes.normalSmall.widget(data.time),
          const SizedBox(height: 8),
          Center(child: AppTextTypes.veryLargeTemperature.widget(data.temperature)),
          const SizedBox(height: 16),
          AppTextTypes.normal.widget(data.city),
          const SizedBox(height: 8),
          AppTextTypes.normalSmall.widget(data.country),
        ],
      ),
    );
  }
}
