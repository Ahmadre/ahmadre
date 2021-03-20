import 'package:flutter/material.dart';

class LanguageTiles extends StatefulWidget {
  const LanguageTiles({
    Key key,
    @required this.appLocale,
    @required this.onChanged,
  }) : super(key: key);

  final Locale appLocale;
  final ValueChanged<Locale> onChanged;

  @override
  _LanguageTilestate createState() => _LanguageTilestate();
}

class _LanguageTilestate extends State<LanguageTiles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<Locale>(
          title: Text(
            'English',
          ),
          secondary: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'assets/icons/en.png',
              height: 24,
              width: 24,
              fit: BoxFit.cover,
            ),
          ),
          value: const Locale('en'),
          groupValue: widget.appLocale,
          onChanged: (Locale value) {
            setState(() {
              widget.onChanged(value);
            });
          },
        ),
        RadioListTile<Locale>(
          title: Text(
            'German',
          ),
          secondary: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'assets/icons/de.png',
              height: 24,
              width: 24,
              fit: BoxFit.cover,
            ),
          ),
          value: const Locale('de'),
          groupValue: widget.appLocale,
          onChanged: (Locale value) {
            setState(() {
              widget.onChanged(value);
            });
          },
        ),
      ],
    );
  }
}
