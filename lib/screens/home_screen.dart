
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme/theme_bloc.dart';
import '../bloc/theme/theme_event.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VPlay'),
        actions: [
          Switch(
            value: context.read<ThemeBloc>().state.themeData.brightness == Brightness.dark,
            onChanged: (value) {
              context.read<ThemeBloc>().add(const ToggleThemeEvent());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, Flutter!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Toggle the switch to change themes',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
