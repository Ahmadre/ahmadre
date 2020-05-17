import 'package:flutter/material.dart';

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
            Text(
              '404',
              textScaleFactor: 10,
            ),
            Text(
              'Lost in Flutter!',
              textScaleFactor: 3,
            ),
            Text('Sorry the page you\'re looking for isn\'t here 😮'),
          ],
        ),
      ),
    );
  }
}
