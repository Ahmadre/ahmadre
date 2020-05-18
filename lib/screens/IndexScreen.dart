import 'package:app/app/service.dart';
import 'package:app/components/ResponsiveNavigationBar.dart';
import 'package:app/screens/AboutScreen/AboutScreen.dart';
import 'package:app/screens/ContactScreen/ContactScreen.dart';
import 'package:app/screens/ProjectScreen/ProjectScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IndexScreen extends StatefulWidget {
  IndexScreen({Key key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<AppService>(context, listen: false);

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/home_background.jpg',
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/white_logo_transparent_background.png',
                        fit: BoxFit.contain,
                        width: 200,
                      ),
                      ResponsiveNavigationBar(),
                    ],
                  ),
                ),
                ChangeNotifierProvider.value(
                  value: service,
                  child: AnimatedBuilder(
                    animation: service,
                    builder: (context, child) {
                      switch (service.content) {
                        case 'projects':
                          return ProjectScreen();
                          break;
                        case 'about':
                          return AboutScreen();
                          break;
                        case 'contact':
                          return ContactScreen();
                          break;
                        default:
                          return ProjectScreen();
                          break;
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
