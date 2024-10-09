import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// Define ThemeState to store the current theme data.
class ThemeState extends Equatable {
  final ThemeData themeData;

  const ThemeState({required this.themeData});

  @override
  List<Object> get props => [themeData];
}
