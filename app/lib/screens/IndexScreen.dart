import 'package:app/app/service.dart';
import 'package:app/app/theme.dart';
import 'package:app/components/ResponsiveNavigationBar.dart';
import 'package:app/components/SideMenu.dart';
import 'package:app/screens/AboutScreen/AboutScreen.dart';
import 'package:app/screens/ContactScreen/ContactScreen.dart';
import 'package:app/screens/ProjectScreen/ProjectScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IndexScreen extends StatefulWidget {
  IndexScreen({Key key}) : super(key: key);

  @override
  IndexScreenState createState() => IndexScreenState();
}

class IndexScreenState extends State<IndexScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<AppService>(context, listen: false);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: MediaQuery.of(context).size.width <= 420.0
          ? Theme(
              data: AppTheme.light,
              child: SideMenu(service: service),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo_transparent_background.png',
                    fit: BoxFit.contain,
                    width: 200,
                  ),
                  ResponsiveNavigationBar(
                    scaffoldKey: scaffoldKey,
                  ),
                ],
              ),
            ),
            ChangeNotifierProvider.value(
              value: service,
              child: Theme(
                data: AppTheme.light,
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
            ),
          ],
        ),
      ),
    );
  }
}
