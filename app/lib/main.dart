import 'package:app/app/app.dart';
import 'package:app/app/service.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final service = await AppService.init();
  
  runApp(AhmadreApp(
    service: service,
  ));
}
