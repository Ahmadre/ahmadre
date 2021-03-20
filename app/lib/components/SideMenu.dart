import 'package:app/app/service.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
    @required this.service,
  }) : super(key: key);

  final AppService service;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 200),
        child: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Menu',
                          textScaleFactor: 1.3,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                      ),
                    ]),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        service.content = 'projects';
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.code),
                      title: Text('Projects'),
                    ),
                    ListTile(
                      onTap: () {
                        service.content = 'about';
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.info_outline),
                      title: Text('About'),
                    ),
                    ListTile(
                      onTap: () {
                        service.content = 'contact';
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.mail_outline),
                      title: Text('Contact'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
