import 'package:app/app/service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final kTabletBreakpoint = 720.0;

class ResponsiveNavigationBar extends StatefulWidget {
  const ResponsiveNavigationBar({
    Key key,
    this.buttonColor = Colors.white,
  }) : super(key: key);

  final Color buttonColor;

  @override
  _ResponsiveNavigationBarState createState() => _ResponsiveNavigationBarState();
}

class _ResponsiveNavigationBarState extends State<ResponsiveNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final service = Provider.of<AppService>(context, listen: false);

    if (MediaQuery.of(context).size.width <= kTabletBreakpoint) {
      return ButtonBar(
        alignment: MainAxisAlignment.end,
        children: [
          IconButton(
            color: widget.buttonColor,
            icon: Icon(Icons.code),
            onPressed: () => service.content = 'projects',
            tooltip: 'Projects',
          ),
          IconButton(
            color: widget.buttonColor,
            icon: Icon(Icons.info_outline),
            onPressed: () => service.content = 'about',
            tooltip: 'About',
          ),
          IconButton(
            color: widget.buttonColor,
            icon: Icon(Icons.mail_outline),
            onPressed: () => service.content = 'contact',
            tooltip: 'Contact',
          ),
        ],
      );
    }
    return ButtonBar(
      alignment: MainAxisAlignment.end,
      buttonPadding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () => service.content = 'projects',
          child: Text(
            'Projects',
            style: TextStyle(
              color: widget.buttonColor,
            ),
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () => service.content = 'about',
          child: Text(
            'About',
            style: TextStyle(
              color: widget.buttonColor,
            ),
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () => service.content = 'contact',
          child: Text(
            'Contact',
            style: TextStyle(
              color: widget.buttonColor,
            ),
          ),
        ),
      ],
    );
  }
}
