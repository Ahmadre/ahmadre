import 'package:app/services/AppManager.dart';
import 'package:flutter/material.dart';

class BrightnessTiles extends StatefulWidget {
  const BrightnessTiles({
    Key key,
    @required this.appBrightness,
    @required this.onChanged,
  }) : super(key: key);

  final AppBrightness appBrightness;
  final ValueChanged<AppBrightness> onChanged;

  @override
  _BrightnessTileState createState() => _BrightnessTileState();
}

class _BrightnessTileState extends State<BrightnessTiles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<AppBrightness>(
          title: Text(
            AppBrightness.light.label.toUpperCase(),
          ),
          secondary: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(AppBrightness.light.icon),
          ),
          value: AppBrightness.light,
          groupValue: widget.appBrightness,
          onChanged: (AppBrightness value) {
            setState(() {
              widget.onChanged(value);
            });
          },
        ),
        RadioListTile<AppBrightness>(
          title: Text(
            AppBrightness.dark.label.toUpperCase(),
          ),
          secondary: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Transform.rotate(
              angle: .55,
              child: Icon(AppBrightness.dark.icon),
            ),
          ),
          value: AppBrightness.dark,
          groupValue: widget.appBrightness,
          onChanged: (AppBrightness value) {
            setState(() {
              widget.onChanged(value);
            });
          },
        ),
        RadioListTile<AppBrightness>(
          title: Text(
            AppBrightness.system.label.toUpperCase(),
          ),
          secondary: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(AppBrightness.system.icon),
          ),
          value: AppBrightness.system,
          groupValue: widget.appBrightness,
          onChanged: (AppBrightness value) {
            setState(() {
              widget.onChanged(value);
            });
          },
        ),
      ],
    );
  }
}
