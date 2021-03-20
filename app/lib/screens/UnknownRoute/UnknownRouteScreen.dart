import 'package:flutter/material.dart';

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5ECCA),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/botw_moon.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '404',
                  textScaleFactor: 10,
                  style: TextStyle(
                    color: Color(0xFFff4c60),
                  ),
                ),
                Text(
                  'Hurry blood moon appears!',
                  textAlign: TextAlign.center,
                  textScaleFactor: 2,
                  style: TextStyle(
                    color: Color(0xFFff4c60),
                  ),
                ),
                Text(
                  'Sorry the page you\'re looking for isn\'t here 😮',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFff4c60),
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  elevation: 0,
                  minWidth: 150,
                  onPressed: () => Navigator.pushReplacementNamed(context, '/'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      width: 1.0,
                      color: Color(0xFFff4c60),
                    ),
                  ),
                  child: Text(
                    'Skip blood moon',
                    style: TextStyle(
                      color: Color(0xFFff4c60),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
