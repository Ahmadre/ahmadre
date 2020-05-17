import 'package:app/services/AppManager.dart';
import 'package:app/services/i18n/MatakuLocalizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class AppService extends ChangeNotifier {
  static Future<AppService> init() async {
    if (!kIsWeb) {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      Hive.init(appDocumentDir.path);
    }
    box = await Hive.openBox('box.mataku');
    final brightness = AppBrightness.from(await box.get('appBrightness'));
    final locale =
        (await box.get('userLanguage')) != null ? Locale((await box.get('userLanguage'))) : const Locale('en');
    final localizationsDelegate = MatakuLocalizations.delegate;
    final overlayStyle = brightness.mode == ThemeMode.dark
        ? SystemUiOverlayStyle.dark.copyWith(statusBarBrightness: Brightness.dark)
        : SystemUiOverlayStyle.light.copyWith(statusBarBrightness: Brightness.light);
    return AppService._(brightness, locale, localizationsDelegate, overlayStyle);
  }

  AppService._(
    AppBrightness brightness,
    Locale locale,
    LocalizationsDelegate<MatakuLocalizations> localizationsDelegate,
    SystemUiOverlayStyle overlayStyle,
  )   : _brightness = brightness,
        _locale = locale,
        _localizationsDelegate = localizationsDelegate,
        _overlayStyle = overlayStyle;

  static Box box;

  AppBrightness _brightness;

  SystemUiOverlayStyle _overlayStyle;


  LocalizationsDelegate<MatakuLocalizations> _localizationsDelegate;

  Locale _locale;

  bool settingSaved(String key) => box.get(key) != null ? true : false;

  Locale get locale => _locale;

  set locale(Locale value) {
    if (_locale == value) {
      return;
    }
    _locale = value;
    _localizationsDelegate = I18nDelegate(newLocale: _locale);
    box.put('userLanguage', _locale.languageCode);
    notifyListeners();
  }

  LocalizationsDelegate<MatakuLocalizations> get localizationsDelegate => _localizationsDelegate;

  set localizationsDelegate(LocalizationsDelegate<MatakuLocalizations> value) {
    if (_localizationsDelegate == value) {
      return;
    }
    _localizationsDelegate = value;
    notifyListeners();
  }

  AppBrightness get brightness => _brightness;

  set brightness(AppBrightness value) {
    _brightness = value;
    box.put('appBrightness', _brightness.value);
    _overlayStyle = _brightness.mode == ThemeMode.dark
        ? SystemUiOverlayStyle.dark.copyWith(statusBarBrightness: Brightness.dark)
        : SystemUiOverlayStyle.light.copyWith(statusBarBrightness: Brightness.light);
    notifyListeners();
  }

  SystemUiOverlayStyle get overlayStyle => _overlayStyle;

  set overlayStyle(SystemUiOverlayStyle value) {
    _overlayStyle = value;
    notifyListeners();
  }
}
