import 'package:app/screens/FlutterIconPicker/IconPickerScreen.dart';
import 'package:app/screens/IndexScreen.dart';
import 'package:app/screens/ProjectScreen/Projects/AMPTechAppScreen.dart';
import 'package:app/screens/ProjectScreen/Projects/BestSignAppScreen.dart';
import 'package:app/screens/ProjectScreen/Projects/LUITSScreen.dart';
import 'package:app/screens/ProjectScreen/Projects/SRIAppScreen.dart';
import 'package:app/screens/ProjectScreen/Projects/TelexiomAppScreen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => IndexScreen(),
  '/iconpicker': (context) => FlutterIconPickerExample(),
  '/sriapp': (context) => SRIAppScreen(),
  '/luitsapp': (context) => LUITSScreen(),
  '/telexiomapp': (context) => TelexiomAppScreen(),
  '/bestsignapp': (context) => BestSignAppScreen(),
  '/amptechapp': (context) => AMPTechAppScreen(),
};
