part of 'search_bloc.dart';

@immutable
abstract class SearchState extends PageState {}

class SearchInitial extends SearchState {
  final String searchedName;
  final bool isLoading;
  final List<CityData> listCity;

  SearchInitial({
    required this.searchedName,
    required this.isLoading,
    required this.listCity,
  });

  @override
  List<Object?> get props => [
        searchedName,
        isLoading,
        listCity,
      ];
}
