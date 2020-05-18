import 'package:app/components/AppReferences.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinycolor/tinycolor.dart';
import 'package:url_launcher/url_launcher.dart';

class SRIAppScreen extends StatefulWidget {
  const SRIAppScreen({Key key}) : super(key: key);

  @override
  _SRIAppScreenState createState() => _SRIAppScreenState();
}

class _SRIAppScreenState extends State<SRIAppScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SRI App'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          constraints: BoxConstraints(
            maxWidth: 800,
          ),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Image.asset(
                    'assets/images/atem_logo.png',
                    height: 100,
                  ),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight()
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Text(
                    'Project content',
                    textScaleFactor: 1.3,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('''
Management and development of a platform independent eHealth application for Android/iOS and browsers based on Flutter. 

The customer and doctor from the Cologne Lung Clinic in Merheim is conducting a research project on patients with lung disease. 

This project resulted in concepts and drafts for an app that digitizes questionnaires and makes the evaluations available to the research manager. 

In order to meet the demand for a native app with a low budget, Google's newest framework was used: Flutter. This made it possible to implement the desired individual design of the customer without much effort.
                  '''),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight()
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Text(
                    'Technologies / Methods',
                    textScaleFactor: 1.3,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    children: [
                      ActionChip(
                        label: Text('Flutter/Dart'),
                        onPressed: () async {
                          if (await canLaunch('https://flutter.dev/')) {
                            launch(
                              'https://flutter.dev/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: FlutterLogo(),
                        ),
                      ),
                      ActionChip(
                        label: Text('NodeJS/Express'),
                        onPressed: () async {
                          if (await canLaunch('https://nodejs.org/')) {
                            launch(
                              'https://nodejs.org/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            FontAwesomeIcons.nodeJs,
                            color: Colors.green,
                            size: 20,
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('GraphQL'),
                        onPressed: () async {
                          if (await canLaunch('https://graphql.org/')) {
                            launch(
                              'https://graphql.org/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/GraphQL_Logo.svg/1920px-GraphQL_Logo.svg.png',
                            height: 20,
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('Fastlane'),
                        onPressed: () async {
                          if (await canLaunch('https://fastlane.tools/')) {
                            launch(
                              'https://fastlane.tools/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Image.network(
                            'https://avatars2.githubusercontent.com/u/11098337?s=200&v=4',
                            height: 20,
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('JSON Web Token'),
                        onPressed: () async {
                          if (await canLaunch('https://jwt.io/')) {
                            launch(
                              'https://jwt.io/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(3),
                          child: Image.network(
                            'https://jwt.io/img/pic_logo.svg',
                            height: 20,
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('Secure by Design'),
                        onPressed: () async {
                          if (await canLaunch('https://en.wikipedia.org/wiki/Secure_by_design')) {
                            launch(
                              'https://en.wikipedia.org/wiki/Secure_by_design',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('Azure DevOps'),
                        onPressed: () async {
                          if (await canLaunch('https://azure.microsoft.com/de-de/services/devops/')) {
                            launch(
                              'https://azure.microsoft.com/de-de/services/devops/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Transform.scale(
                            scale: .8,
                            child: Icon(
                              FontAwesomeIcons.windows,
                              color: Colors.blue.shade500,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('Git'),
                        onPressed: () async {
                          if (await canLaunch('https://git-scm.com/')) {
                            launch(
                              'https://git-scm.com/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Transform.scale(
                            scale: .8,
                            child: Icon(
                              FontAwesomeIcons.gitAlt,
                              color: Colors.orange.shade900,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('Javascript'),
                        onPressed: () async {
                          if (await canLaunch('https://www.w3schools.com/js/')) {
                            launch(
                              'https://www.w3schools.com/js/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Transform.scale(
                            scale: .8,
                            child: Icon(
                              FontAwesomeIcons.js,
                              color: Colors.yellow.shade800,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('Java'),
                        onPressed: () async {
                          if (await canLaunch('https://www.w3schools.com/java/java_intro.asp')) {
                            launch(
                              'https://www.w3schools.com/java/java_intro.asp',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Transform.scale(
                            scale: .8,
                            child: Icon(
                              FontAwesomeIcons.java,
                              color: Colors.blue.shade800,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('Swift'),
                        onPressed: () async {
                          if (await canLaunch('https://developer.apple.com/swift/')) {
                            launch(
                              'https://developer.apple.com/swift/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Transform.scale(
                            scale: .8,
                            child: Icon(
                              FontAwesomeIcons.swift,
                              color: Colors.orange.shade800,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      ActionChip(
                        label: Text('MongoDB'),
                        onPressed: () async {
                          if (await canLaunch('https://www.mongodb.com/')) {
                            launch(
                              'https://www.mongodb.com/',
                              enableDomStorage: true,
                              enableJavaScript: true,
                            );
                          }
                        },
                        avatar: Container(
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(2),
                          child: Transform.scale(
                            scale: .8,
                            child: Icon(
                              FontAwesomeIcons.database,
                              color: Colors.green.shade800,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight()
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Text(
                    'App References',
                    textScaleFactor: 1.3,
                  ),
                ),
                AppReferences(
                  webURL: 'https://sriapp.telexiom.de/#/',
                  androidURL: 'https://play.google.com/store/apps/details?id=com.atemwegsliga.app',
                  iosURL: 'https://apps.apple.com/sa/app/sri-q/id1470060698',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
