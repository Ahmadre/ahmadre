import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 720,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1.0,
                      color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight()
                          ? Colors.black54
                          : Colors.white54,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Projects',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () => Navigator.pushNamed(context, '/iconpicker'),
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: FlutterLogo(),
                ),
                title: Text('Flutter Icon Picker'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () => Navigator.pushNamed(context, '/sriapp'),
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'assets/images/atem_logo.png',
                  width: 47,
                ),
                title: Text('SRI (Severe Respiratory Insufficiency) App'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () async {
                  final String astaapp = 'https://asta.robsphere.com/';
                  if (await canLaunch(astaapp)) {
                    launch(
                      astaapp,
                      enableDomStorage: true,
                      enableJavaScript: true,
                    );
                  }
                },
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/images/astalogo.ico',
                    width: 30,
                  ),
                ),
                title: Text('AStA App'),
                trailing: Icon(Icons.open_in_new),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () => Navigator.pushNamed(context, '/luitsapp'),
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: FlutterLogo(),
                ),
                title: Text('LUITS App Beta (eHealth Wiki)'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
