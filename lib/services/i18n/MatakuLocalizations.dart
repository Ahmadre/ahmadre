import 'dart:async';
import 'dart:convert';
import 'package:app/services/i18n/LanguageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MatakuLocalizations {
  MatakuLocalizations(this.locale);

  final Locale locale;

  static MatakuLocalizations of(BuildContext context) {
    return Localizations.of<MatakuLocalizations>(context, MatakuLocalizations);
  }

  static const LocalizationsDelegate<MatakuLocalizations> delegate = I18nDelegate();

  Map<String, String> _sentences;

  Future<bool> loadAppSentences() async {
    String lang = this.locale.languageCode;
    String data = await rootBundle.loadString('assets/internationalization/$lang.json');
    Map<String, dynamic> _result = json.decode(data);

    this._sentences = {};
    _result.forEach((String key, dynamic value) {
      this._sentences[key] = value.toString();
    });

    return true;
  }

  Future<bool> load() async {
    await loadAppSentences();
    return true;
  }

  String translate(String key) => this._sentences[key];
}

class I18nDelegate extends LocalizationsDelegate<MatakuLocalizations> {
  final Locale newLocale;

  const I18nDelegate({this.newLocale});

  @override
  bool isSupported(Locale locale) => languageManager.supportedLanguagesCodes.contains(locale.languageCode);

  @override
  Future<MatakuLocalizations> load(Locale locale) async {
    MatakuLocalizations localizations = new MatakuLocalizations(newLocale ?? locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(I18nDelegate old) => true;
}
