import 'package:app/app/routes.dart';
import 'package:app/app/service.dart';
import 'package:app/app/theme.dart';
import 'package:app/screens/UnknownRoute/UnknownRouteScreen.dart';
import 'package:app/services/i18n/LanguageManager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:universal_html/html.dart';

class AhmadreApp extends StatefulWidget {
  const AhmadreApp({
    Key key,
    @required this.service,
  }) : super(key: key);

  final AppService service;

  @override
  AhmadreAppState createState() => AhmadreAppState();
}

class AhmadreAppState extends State<AhmadreApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(widget.service.overlayStyle);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.service,
      child: AnimatedBuilder(
        animation: widget.service,
        builder: (context, child) => MaterialApp(
          navigatorKey: navigatorKey,
          title: 'A H M A D R E',
          initialRoute: '/',
          routes: routes,
          onUnknownRoute: (settings) => MaterialPageRoute(
            builder: (context) => UnknownRouteScreen(),
          ),
          debugShowCheckedModeBanner: false,
          themeMode: widget.service.brightness.mode,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          supportedLocales: languageManager.supportedLocales(),
          localizationsDelegates: [
            widget.service.localizationsDelegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate
          ],
          localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
            if (locale == null) {
              if (widget.service.settingSaved('userLanguage')) {
                return widget.service.locale;
              }
              if (kIsWeb) {
                Locale mylang;
                String browserlang = Locale(window.navigator.language.toString().substring(0, 2)).languageCode;
                if (languageManager.supportedLanguagesCodes.contains(browserlang))
                  mylang = Locale(browserlang, '');
                else
                  mylang = supportedLocales.first;
                return mylang;
              }
              return supportedLocales.first;
            }
            for (Locale supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode ||
                  supportedLocale.countryCode == locale.countryCode) {
                if (widget.service.settingSaved('userLanguage')) {
                  return widget.service.locale;
                }
                if (kIsWeb) {
                  Locale mylang;
                  String browserlang = Locale(window.navigator.language.toString().substring(0, 2)).languageCode;
                  if (languageManager.supportedLanguagesCodes.contains(browserlang))
                    mylang = Locale(browserlang, '');
                  else
                    mylang = supportedLocales.first;
                  return mylang;
                }
                return supportedLocale;
              }
            }
            if (widget.service.settingSaved('userLanguage')) {
              return widget.service.locale;
            }
            return supportedLocales.first;
          },
        ),
      ),
    );
  }
}
