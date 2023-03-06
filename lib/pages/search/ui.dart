import 'package:drivers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms/data.dart';
import 'package:forms/widgets.dart';
import 'package:localization/strings.dart';
import 'package:weather_app/app/app_keys.dart';
import 'package:weather_app/app/app_text.dart';
import 'package:weather_app/app/ui/colors.dart';
import 'package:weather_app/app/ui/kit/page.dart';
import 'package:weather_app/pages/search/form.dart';
import 'package:weather_app/pages/search/form_text_input.dart';
import 'package:weather_app/pages/search/models.dart';

import 'bloc/search_bloc.dart';

SearchBloc _bloc(BuildContext context) => BlocProvider.of(context);
const _pageKey = AppKeys.pageSearch;

class SearchPageProvider extends StatelessWidget {
  final _form = SearchNameForm();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchBloc(
        resolveDependency(),
        resolveDependency(),
      ),
      child: AppFormProvider(
        formKey: _form.key,
        onSubmit: (values, _) {
          _bloc(context).add(
            OnSearchSubmit(
              StringFormValue.getValue(
                values,
                SearchNameForm.nameFieldName,
              ),
            ),
          );
        },
        child: AppPage<SearchState, SearchBloc>(
          key: _pageKey.key(),
          child: SearchPage(),
        ),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: _pageKey.name),
      builder: (context) => SearchPageProvider(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.searchCities),
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchInitial) {
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
  final SearchInitial state;

  const _Loaded(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 16),
          AppFormTextInput(
            key: AppKeys.pageSearchCityName.key(),
            fieldName: SearchNameForm.nameFieldName,
            initValue: () => const StringFormValue(),
            validators: const [],
            label: strings.startEnteringCityName,
            onChanged: (value) => _bloc(context).add(OnEnterName(value)),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              shrinkWrap: false,
              itemCount: state.listCity.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => _CityWeatherItemUi(state.listCity[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class _CityWeatherItemUi extends StatelessWidget {
  final CityData data;

  const _CityWeatherItemUi(this.data);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
      child: Material(
        color: colors.tagBorder,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Expanded(child: AppTextTypes.normalSmall.widget('${data.city} (${data.country})')),
              AppTextTypes.normalSmall.widget(data.countryCode),
              IconButton(
                visualDensity: VisualDensity.compact,
                onPressed:
                    data.isInAddedList ? null : () => _bloc(context).add(OnAddCityClick(data)),
                icon: data.isInAddedList
                    ? const Icon(Icons.check_circle_rounded)
                    : const Icon(Icons.add_circle_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//
// class _MainCityWeather extends StatelessWidget {
//   final CityWeatherInfo data;
//
//   const _MainCityWeather(this.data);
//
//   @override
//   Widget build(BuildContext context) {
//     final colors = AppColorScheme.of(context).colors;
//
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: colors.tagBorder,
//         borderRadius: const BorderRadius.all(Radius.circular(26)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           AppTextTypes.normalSmall.widget(data.time),
//           const SizedBox(height: 8),
//           Center(child: AppTextTypes.veryLargeTemperature.widget(data.temperature)),
//           const SizedBox(height: 16),
//           AppTextTypes.normal.widget(data.city),
//           const SizedBox(height: 8),
//           AppTextTypes.normalSmall.widget(data.country),
//         ],
//       ),
//     );
//   }
// }
