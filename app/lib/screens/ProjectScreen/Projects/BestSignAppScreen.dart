import 'package:app/app/theme.dart';
import 'package:app/components/AppReferences.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BestSignAppScreen extends StatefulWidget {
  const BestSignAppScreen({Key key}) : super(key: key);

  @override
  _BestSignAppScreenState createState() => _BestSignAppScreenState();
}

class _BestSignAppScreenState extends State<BestSignAppScreen> {
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
          title: Text('BestSign'),
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
                    child: Image.asset(
                      'assets/images/bestsign_logo.png',
                      height: 100,
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
Development of a hybrid new banking security policy app. 

The front end was encapsulated in a mobile app using React 15 based on Cordova.

Security relevant APIs were tested by mocking. This allowed modular development and rollout between dev environment and productive environment.
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
                          label: Text('React'),
                          onPressed: () async {
                            if (await canLaunch('https://reactjs.org/')) {
                              launch(
                                'https://reactjs.org/',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Image.asset(
                              'assets/images/react.png',
                              height: 20,
                            ),
                          ),
                        ),
                        ActionChip(
                          label: Text('SCRUM'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://www.wibas.com/de/scrum/')) {
                              launch(
                                'https://www.wibas.com/de/scrum/',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Image.asset(
                              'assets/images/scrum.png',
                              height: 20,
                            ),
                          ),
                        ),
                        ActionChip(
                          label: Text('Secure by Design'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://en.wikipedia.org/wiki/Secure_by_design')) {
                              launch(
                                'https://en.wikipedia.org/wiki/Secure_by_design',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.lock_outline,
                              color: Colors.black,
                              size: 20,
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
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
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
                            if (await canLaunch(
                                'https://www.w3schools.com/java/java_intro.asp')) {
                              launch(
                                'https://www.w3schools.com/java/java_intro.asp',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
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
                          label: Text('Objective-C'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html')) {
                              launch(
                                'https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/c.png'),
                                fit: BoxFit.contain,
                              ),
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(2),
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
                    iosURL: 'https://apps.apple.com/de/app/postbank-bestsign-app/id1442251022',
                    androidURL:
                        'https://play.google.com/store/apps/details?id=de.postbank.bestsign',
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
