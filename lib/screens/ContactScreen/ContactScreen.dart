import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinycolor/tinycolor.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Contact',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Rebar Ahmad',
                textScaleFactor: 1.5,
              ),
              Text(
                'Full-Stack Software Engineer',
                textScaleFactor: 1.25,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () async {
                  final mail = 'mailto:rebar.ahmad@gmail.com';
                  if (await canLaunch(mail)) {
                    launch(mail);
                  }
                },
                leading: Icon(Icons.mail_outline),
                title: Text(
                  'rebar.ahmad@gmail.com',
                  style: TextStyle(
                    color: Colors.blue.shade500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              ListTile(
                onTap: () async {
                  final github = 'https://github.com/Ahmadre';
                  if (await canLaunch(github)) {
                    launch(github);
                  }
                },
                leading: Icon(
                  FontAwesomeIcons.github,
                  color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight() ? Colors.black : Colors.white,
                ),
                title: Text(
                  '@Ahmadre',
                  style: TextStyle(
                    color: Colors.blue.shade500,
                  ),
                ),
              ),
              ListTile(
                onTap: () async {
                  final github = 'https://twitter.com/4hm4dr3';
                  if (await canLaunch(github)) {
                    launch(github);
                  }
                },
                leading: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  '@4hm4dr3',
                  style: TextStyle(
                    color: Colors.blue.shade500,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
                    'Legal Notice',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Responsible for the content according to §5 TMG (german law):'),
              SizedBox(
                height: 10,
              ),
              ListTile(
                mouseCursor: MouseCursor.defer,
                title: SelectableText('Rebar Ahmad'),
                subtitle: SelectableText('''
Kuthsweg 40
40231 Düsseldorf
Germany
                  '''),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Breath of the Wild illustration (404 Page) by:'),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () async {
                  final url = 'https://dribbble.com/marie_bergeron/shots';
                  if (await canLaunch(url)) {
                    launch(url);
                  }
                },
                leading: Image.asset('assets/images/mbergeron.gif'),
                title: Text('Marie Bergeron'),
                trailing: Icon(Icons.open_in_new),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
