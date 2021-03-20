import 'dart:ui';

class LanguageManager {

  static final LanguageManager _languageManager = LanguageManager._internal();

  factory LanguageManager() {
    return _languageManager;
  }

  LanguageManager._internal();

  final List<String> supportedLanguagesCodes = ['en', 'de'];

  Iterable<Locale> supportedLocales() =>
      supportedLanguagesCodes.map<Locale>((language) => Locale(language, ''));
}

LanguageManager languageManager = LanguageManager();