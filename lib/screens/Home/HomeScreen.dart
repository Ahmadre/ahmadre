import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight()
                      ? 'assets/images/logo_transparent_background.png'
                      : 'assets/images/white_logo_transparent_background.png',
                  fit: BoxFit.contain,
                  width: 200,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
