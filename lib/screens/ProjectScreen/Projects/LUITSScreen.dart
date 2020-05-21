import 'package:app/app/theme.dart';
import 'package:app/components/AppReferences.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinycolor/tinycolor.dart';
import 'package:url_launcher/url_launcher.dart';

class LUITSScreen extends StatefulWidget {
  const LUITSScreen({Key key}) : super(key: key);

  @override
  _LUITSScreenState createState() => _LUITSScreenState();
}

class _LUITSScreenState extends State<LUITSScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.light,
      child: Scaffold(
        appBar: AppBar(
          title: Text('LUITS App'),
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
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
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
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
Management and development of a serverless eHealth application for Android/iOS and browser based on Flutter and Firebase. 

The intensive care unit of the pulmonary clinic in Cologne Merheim decided to develop a mobile app based on the idea of digitalization and the daily mobile work of doctors and other employees. 

This app will provide texts, videos and images in the form of instructions and wikis. These media will be provided as PageView, so that users of the app always have digital books at hand instead of having to look up documents.
                    '''),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
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
                          label: Text('Firebase'),
                          onPressed: () async {
                            if (await canLaunch('https://firebase.google.com/')) {
                              launch(
                                'https://firebase.google.com/',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Image.asset(
                              'assets/images/firebase.png',
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
                            child: Image.asset(
                              'assets/images/fastlane.png',
                              height: 20,
                            ),
                          ),
                        ),
                        ActionChip(
                          label: Text('OAuth2'),
                          onPressed: () async {
                            if (await canLaunch('https://oauth.net/2/')) {
                              launch(
                                'https://oauth.net/2/',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.security,
                              color: Colors.black,
                              size: 20,
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
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
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
                    webURL: 'https://pulmonary-intensive-care-unit.firebaseapp.com/#/',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
