
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vplay_frontend/screens/home_screen.dart';
import 'bloc/theme/theme_bloc.dart';
import 'bloc/theme/theme_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theming with BLoC',
            theme: themeState.themeData,
            home:const Scaffold(
              body: HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
