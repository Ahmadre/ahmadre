import 'package:app/app/service.dart';
import 'package:app/services/AppManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:provider/provider.dart';

class FlutterIconPickerExample extends StatefulWidget {
  const FlutterIconPickerExample({
    Key key,
  }) : super(key: key);

  @override
  _FlutterIconPickerExampleState createState() => _FlutterIconPickerExampleState();
}

class _FlutterIconPickerExampleState extends State<FlutterIconPickerExample> {
  @override
  Widget build(BuildContext context) {
    final service = Provider.of<AppService>(context, listen: false);

    return PickerHomeScreen(
      isDarkTheme: service.brightness.mode == ThemeMode.dark,
      onThemeChanged: (bool val) => setState(() {
        service.brightness = AppBrightness.from(val == true ? 'dark' : 'light');
      }),
    );
  }
}

class PickerHomeScreen extends StatefulWidget {
  const PickerHomeScreen({
    Key key,
    this.isDarkTheme,
    this.onThemeChanged,
  }) : super(key: key);

  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;

  @override
  _PickerHomeScreenState createState() => _PickerHomeScreenState();
}

class _PickerHomeScreenState extends State<PickerHomeScreen> {
  Icon _icon;
  bool isAdaptive = true;

  _pickIcon() async {
    IconData icon = await FlutterIconPicker.showIconPicker(
      context,
      adaptiveDialog: isAdaptive,
      iconPickerShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      iconPackMode: IconPack.cupertino,
    );

    if (icon != null) {
      _icon = Icon(icon);
      setState(() {});

      debugPrint('Picked Icon:  $icon');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Icon Picker Demo'),
        leading: BackButton(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: widget.isDarkTheme
                ? Transform.rotate(
                    angle: .55,
                    child: Icon(Icons.brightness_3),
                  )
                : Icon(Icons.brightness_7),
            onPressed: () => widget.onThemeChanged(!widget.isDarkTheme),
            tooltip: 'Switch brightness',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: _pickIcon,
                  child: Text(_icon != null ? 'Change Icon' : 'Open IconPicker'),
                ),
                if (_icon != null)
                  RaisedButton(
                    onPressed: () => setState(() => _icon = null),
                    child: Text('Clear Icon'),
                  ),
              ],
            ),
            SizedBox(height: 10),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: _icon != null ? _icon : Container(),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.blue.shade500,
        child: SwitchListTile.adaptive(
          title: Text(
            'Adaptive dialog',
            style: TextStyle(color: Colors.white),
          ),
          value: isAdaptive,
          onChanged: (val) => setState(() => isAdaptive = val),
        ),
      ),
    );
  }
}
