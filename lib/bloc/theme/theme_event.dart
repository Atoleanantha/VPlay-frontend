import 'package:equatable/equatable.dart';

// Define ThemeEvent which extends Equatable to handle state comparisons.
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ToggleThemeEvent extends ThemeEvent {
  const ToggleThemeEvent();
}
