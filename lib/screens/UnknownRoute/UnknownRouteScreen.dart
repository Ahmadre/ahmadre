import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  '404',
                  textScaleFactor: 10,
                ),
              ],
            ),
            Text(
              'Lost in Flutter!',
              textScaleFactor: 3,
            ),
            Text('Sorry the page you\'re looking for isn\'t here 😮'),
            SizedBox(height: 20),
            MaterialButton(
              elevation: 0,
              minWidth: 150,
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  width: 1.0,
                  color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight() ? Colors.black : Colors.white,
                ),
              ),
              child: Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
