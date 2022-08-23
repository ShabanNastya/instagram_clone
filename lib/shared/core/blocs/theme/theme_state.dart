part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState({required ThemeMode themeMode}) = _ThemeState;
}
// class ThemeState extends Equatable {
//   final ThemeMode themeMode;
//
//   const ThemeState({required this.themeMode});
//
//   @override
//   List<Object> get props => [themeMode];
// }
