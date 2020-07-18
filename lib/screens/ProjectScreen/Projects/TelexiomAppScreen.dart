import 'package:app/app/theme.dart';
import 'package:app/components/AppReferences.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TelexiomAppScreen extends StatefulWidget {
  const TelexiomAppScreen({Key key}) : super(key: key);

  @override
  _TelexiomAppScreenState createState() => _TelexiomAppScreenState();
}

class _TelexiomAppScreenState extends State<TelexiomAppScreen> {
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
          title: Text('telexiom App'),
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
                      'assets/images/telexiom_logo.png',
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
Development of a company app on Android and iOS. For internal corporate communication, telexiom AG is planning a platform-independent app for mobile devices and browsers. 

One of the main points was the connection to the internal Azure Active-Directory via Micrsoft OAuth2. 

Through possible security measures such as symmetric encryption, 2FA, session generation by JSON webtoken and reverse proxy, the company app could now be used directly via the company addresses without further registration steps.
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
                          label: Text('Ionic/Angular'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://ionicframework.com/')) {
                              launch(
                                'https://ionicframework.com/',
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
                              'assets/images/ionic.png',
                              height: 20,
                            ),
                          ),
                        ),
                        ActionChip(
                          label: Text('Cordova'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://cordova.apache.org/')) {
                              launch(
                                'https://cordova.apache.org/',
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
                              'assets/images/cordova.png',
                              height: 20,
                            ),
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
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              FontAwesomeIcons.nodeJs,
                              color: Colors.green,
                              size: 20,
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
                          label: Text('Typescript'),
                          onPressed: () async {
                            if (await canLaunch(
                                'https://www.typescriptlang.org/')) {
                              launch(
                                'https://www.typescriptlang.org/',
                                enableDomStorage: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          avatar: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/ts.png'),
                                fit: BoxFit.contain,
                              ),
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(2),
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
                          label: Text('MySQL'),
                          onPressed: () async {
                            if (await canLaunch('https://www.mysql.com/de/')) {
                              launch(
                                'https://www.mysql.com/de/',
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
                              FontAwesomeIcons.database,
                              color: Colors.black54,
                              size: 15,
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
                    androidURL:
                        'https://play.google.com/store/apps/details?id=com.telexiom.app',
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
