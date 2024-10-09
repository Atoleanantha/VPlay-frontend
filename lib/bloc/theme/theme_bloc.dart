import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';
import '../../theme.dart';

// ThemeBloc to manage the application's theme
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: AppThemes.lightTheme)) {
    on<ToggleThemeEvent>((event, emit) {
      final isCurrentlyLightTheme = state.themeData == AppThemes.lightTheme;
      emit(ThemeState(themeData: isCurrentlyLightTheme ? AppThemes.darkTheme : AppThemes.lightTheme));
    });
  }
}
