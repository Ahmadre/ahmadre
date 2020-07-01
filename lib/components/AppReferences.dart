import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AppReferences extends StatefulWidget {
  AppReferences({
    Key key,
    this.webURL,
    this.androidURL,
    this.iosURL,
  }) {
    key = key;
    if (webURL == null && androidURL == null && iosURL == null) {
      AssertionError(
          'You must provide minimum one URL to create AppReferences.');
    }
  }

  final String webURL;
  final String androidURL;
  final String iosURL;

  @override
  _AppReferencesState createState() => _AppReferencesState();
}

class _AppReferencesState extends State<AppReferences> {
  final buttonSize = Size(200, 50);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      runSpacing: 15,
      spacing: 15,
      children: [
        if (widget.androidURL != null)
          InkWell(
            onTap: () async {
              if (await canLaunch(widget.androidURL)) {
                launch(
                  widget.androidURL,
                  enableDomStorage: true,
                  enableJavaScript: true,
                );
              }
            },
            child: Container(
              width: buttonSize.width,
              height: buttonSize.height,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Transform.translate(
                    offset: Offset(0.0, -2.5),
                    child: Icon(
                      FontAwesomeIcons.googlePlay,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Google Play',
                    textScaleFactor: 1.3,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        if (widget.iosURL != null)
          InkWell(
            onTap: () async {
              if (await canLaunch(widget.iosURL)) {
                launch(
                  widget.iosURL,
                  enableDomStorage: true,
                  enableJavaScript: true,
                );
              }
            },
            child: Container(
              width: buttonSize.width,
              height: buttonSize.height,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Transform.translate(
                    offset: Offset(0.0, -2.5),
                    child: Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'App Store',
                    textScaleFactor: 1.3,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        if (widget.webURL != null)
          InkWell(
            onTap: () async {
              if (await canLaunch(widget.webURL)) {
                launch(
                  widget.webURL,
                  enableDomStorage: true,
                  enableJavaScript: true,
                );
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: buttonSize.width,
              height: buttonSize.height,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.devices,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Web App',
                    textScaleFactor: 1.3,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
