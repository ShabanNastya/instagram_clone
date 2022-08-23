part of 'theme_bloc.dart';

class ThemeEvent extends Equatable {
  final bool isDark;

  const ThemeEvent({required this.isDark});

  @override
  List<Object> get props => [isDark];
}
