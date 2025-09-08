import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'CHT Surveys Example';

  @override
  String get homeMessage => 'Home screen';

  @override
  String get languageToolTip => 'Select Language';

  @override
  String get langOptionEn => 'English';

  @override
  String get langOptionEs => 'Español';
}
