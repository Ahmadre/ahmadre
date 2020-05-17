import 'package:app/screens/FlutterIconPicker/IconPickerScreen.dart';
import 'package:app/screens/Home/HomeScreen.dart';
import 'package:app/screens/settings/settings.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
 '/': (context) => HomeScreen(),
 '/iconpicker': (context) => FlutterIconPickerExample(),
 '/settings': (context) => SettingsScreen(), 
};