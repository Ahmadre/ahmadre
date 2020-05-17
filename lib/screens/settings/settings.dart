import 'dart:ui';

import 'package:app/app/service.dart';
import 'package:app/screens/settings/BrightnessTiles.dart';
import 'package:app/screens/settings/LanguageTiles.dart';
import 'package:app/services/i18n/MatakuLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  AppService service;

  @override
  void initState() {
    super.initState();
  }

  void onChangeBrightness() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => _BrightnessDialog(
        service: service,
      ),
    );
  }

  void onChangeLanguage() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => _LanguageDialog(
        service: service,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    service = Provider.of<AppService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Theme.of(context).brightness,
        backgroundColor: Colors.transparent,
        textTheme: Theme.of(context).textTheme.copyWith(
              headline6: Theme.of(context).textTheme.headline6.copyWith(
                    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
                  ),
            ),
        title: Text(
          'Settings',
        ),
      ),
      body: AnimatedBuilder(
        animation: service,
        builder: (context, widget) => ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            ListTile(
              onTap: onChangeBrightness,
              title: Text(
                'App-Theme',
                softWrap: true,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    service.brightness.label.toUpperCase(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Icon(service.brightness.icon),
                ],
              ),
            ),
            ListTile(
              onTap: onChangeLanguage,
              title: Text(
                'Language',
                softWrap: true,
              ),
              trailing: Text(
                '${service.locale.languageCode.toLowerCase()}-${service.locale.languageCode.toUpperCase()}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BrightnessDialog extends StatefulWidget {
  const _BrightnessDialog({
    Key key,
    @required this.service,
  }) : super(key: key);

  final AppService service;

  @override
  _BrightnessDialogState createState() => _BrightnessDialogState();
}

class _BrightnessDialogState extends State<_BrightnessDialog> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        contentPadding: const EdgeInsets.all(0),
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Text(
                  'App-Theme',
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BrightnessTiles(
                appBrightness: widget.service.brightness,
                onChanged: (value) => setState(() {
                  widget.service.brightness = value;
                }),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FlatButton(
                    child: Text(
                      'Close',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageDialog extends StatefulWidget {
  const _LanguageDialog({
    Key key,
    @required this.service,
  }) : super(key: key);

  final AppService service;

  @override
  _LanguageDialogState createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<_LanguageDialog> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        contentPadding: const EdgeInsets.all(0),
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Text(
                  'Language',
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              LanguageTiles(
                appLocale: widget.service.locale,
                onChanged: (value) => setState(() {
                  widget.service.locale = value;
                }),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FlatButton(
                    child: Text(
                      'Close',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
