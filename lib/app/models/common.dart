import 'package:equatable/equatable.dart';
import 'package:localized_string/localized_string.dart';

class ModalListItemModel<T extends dynamic> extends Equatable {
  final T value;
  final String? label;

  const ModalListItemModel({required this.value, required this.label});

  @override
  List<Object?> get props => [value, label];
}

enum AppThemeVariant {
  light,
  dark,
}

class InfoTile {
  final LocalizedString title;
  final LocalizedString subTitle;

  InfoTile({
    required this.title,
    required this.subTitle,
  });
}
