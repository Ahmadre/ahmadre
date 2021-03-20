import 'package:app/app/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AMPTechAppScreen extends StatefulWidget {
  const AMPTechAppScreen({Key key}) : super(key: key);

  @override
  _AMPTechAppScreenState createState() => _AMPTechAppScreenState();
}

class _AMPTechAppScreenState extends State<AMPTechAppScreen> {
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
          title: Text('Secret App'),
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
                      child: Text(
                        '?',
                        textScaleFactor: 5.0,
                      )),
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
As a software-engineer I created a concept for a Flutter app based on Kubernetes to cover over 100k users.

The app should be a third-party app to control your vehicles and display your car in a 3D-Model.

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
                      spacing: 10,
                      runSpacing: 10,
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
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: FlutterLogo(),
                          ),
                        ),
                        ActionChip(
                          label: Text('Unity 3D'),
                          onPressed: () async {
                            if (await canLaunch('https://unity.com')) {
                              launch(
                                'https://unity.com',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: ClipOval(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              padding: EdgeInsets.all(2),
                              child: Transform.scale(
                                scale: 1,
                                child: Image.asset(
                                  'assets/images/unity.png',
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ActionChip(
                          label: Text('Kubernetes'),
                          onPressed: () async {
                            if (await canLaunch('https://kubernetes.io/de/')) {
                              launch(
                                'https://kubernetes.io/de/',
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
                              'assets/images/k8s.png',
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
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Image.asset(
                              'assets/images/fastlane.png',
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
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(3),
                            child: Image.asset(
                              'assets/images/jwt.png',
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
                          label: Text('Spring Boot'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://spring.io/projects/spring-boot')) {
                              launch(
                                'https://spring.io/projects/spring-boot',
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
                              'assets/images/springboot.png',
                              height: 20,
                            ),
                          ),
                        ),
                        ActionChip(
                          label: Text('Swift UI'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://developer.apple.com/xcode/swiftui/')) {
                              launch(
                                'https://developer.apple.com/xcode/swiftui/',
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
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Image.asset(
                              'assets/images/mongodb.png',
                              height: 20,
                            ),
                          ),
                        ),
                        ActionChip(
                          label: Text('Tesla API'),
                          onPressed: () async {
                            if (await canLaunch('https://www.teslaapi.io/')) {
                              launch(
                                'https://www.teslaapi.io/',
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
                              child: Image.asset(
                                'assets/images/teslapi.png',
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
