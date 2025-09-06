import 'package:flutter/material.dart';
import 'package:portafolio/l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get loc =>
      AppLocalizations.of(this) ?? lookupAppLocalizations(const Locale('en'));
}
