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
  _FlutterIconPickerExampleState createState() =>
      _FlutterIconPickerExampleState();
}

class _FlutterIconPickerExampleState extends State<FlutterIconPickerExample> {
  @override
  Widget build(BuildContext context) {
    final service = Provider.of<AppService>(context, listen: false);

    return PickerHomeScreen(
      brightness: service.brightness,
      onThemeChanged: (AppBrightness val) => setState(() {
        service.brightness = val;
      }),
    );
  }
}

class PickerHomeScreen extends StatefulWidget {
  const PickerHomeScreen({
    Key key,
    this.brightness,
    this.onThemeChanged,
  }) : super(key: key);

  final AppBrightness brightness;
  final ValueChanged<AppBrightness> onThemeChanged;

  @override
  _PickerHomeScreenState createState() => _PickerHomeScreenState();
}

class _PickerHomeScreenState extends State<PickerHomeScreen> {
  Icon _icon;
  bool isAdaptive = true;
  bool showTooltips = false;

  IconPack selectedPack = IconPack.cupertino;
  List<PopupMenuEntry<IconPack>> packOptions = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadOptions();
    });
  }

  void loadOptions() {
    packOptions = [];
    packOptions.addAll([
      PopupMenuItem<IconPack>(
          value: IconPack.material, child: Text('Material')),
      PopupMenuItem<IconPack>(
          value: IconPack.cupertino, child: Text('Cupertino')),
      PopupMenuItem<IconPack>(
          value: IconPack.fontAwesomeIcons, child: Text('Font Awesome')),
      PopupMenuItem<IconPack>(
          value: IconPack.lineAwesomeIcons, child: Text('Line Awesome')),
    ]);
    setState(() {});
  }

  void _selectedOption(IconPack val) {
    setState(() {
      selectedPack = val;
    });
  }

  _pickIcon() async {
    IconData icon = await FlutterIconPicker.showIconPicker(
      context,
      adaptiveDialog: isAdaptive,
      showTooltips: showTooltips,
      iconPackMode: selectedPack,
    );

    if (icon != null) {
      _icon = Icon(icon);
      setState(() {});
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
          PopupMenuButton<IconPack>(
            onSelected: (val) => _selectedOption(val),
            itemBuilder: (BuildContext context) => packOptions,
            initialValue: selectedPack,
            icon: null,
            child: TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.style,
                color: Colors.white,
              ),
              label: Text(
                'IconPack',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          IconButton(
            color: Colors.white,
            icon: widget.brightness.mode == ThemeMode.dark
                ? Transform.rotate(
                    angle: .55,
                    child: Icon(Icons.brightness_3),
                  )
                : widget.brightness.mode == ThemeMode.light
                    ? Icon(Icons.brightness_7)
                    : Icon(Icons.brightness_auto),
            onPressed: () =>
                widget.onThemeChanged(widget.brightness.mode == ThemeMode.dark
                    ? AppBrightness.light
                    : widget.brightness.mode == ThemeMode.light
                        ? AppBrightness.system
                        : AppBrightness.dark),
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
                ElevatedButton(
                  onPressed: _pickIcon,
                  child:
                      Text(_icon != null ? 'Change Icon' : 'Open IconPicker'),
                ),
                if (_icon != null)
                  ElevatedButton(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: SwitchListTile.adaptive(
                title: Text(
                  'Show Tooltips',
                  style: TextStyle(color: Colors.white),
                ),
                value: showTooltips,
                onChanged: (val) => setState(() => showTooltips = val),
              ),
            ),
            Flexible(
              child: SwitchListTile.adaptive(
                title: Text(
                  'Adaptive dialog',
                  style: TextStyle(color: Colors.white),
                ),
                value: isAdaptive,
                onChanged: (val) => setState(() => isAdaptive = val),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
