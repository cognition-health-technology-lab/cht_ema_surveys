import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  /// Null defaults to the system locale.
  Locale? locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      home: HomePage(onLocaleChange: changeLocale),
    );
  }

  void changeLocale(Locale? locale) {
    setState(() => this.locale = locale);
  }
}

class HomePage extends StatefulWidget {
  final Function(Locale?) onLocaleChange;

  const HomePage({super.key, required this.onLocaleChange});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(localizations.appTitle),
        actions: <Widget>[
          PopupMenuButton<Locale?>(
            tooltip: localizations.languageToolTip,
            onSelected: widget.onLocaleChange,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<Locale?>(
                  value: const Locale('en'),
                  child: Text(localizations.langOptionEn),
                ),
                PopupMenuItem<Locale?>(
                  value: const Locale('es'),
                  child: Text(localizations.langOptionEs),
                ),
              ];
            },
          )
        ],
      ),
      body: const SurveyList(),
    );
  }
}

class SurveyList extends StatelessWidget {
  const SurveyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            localizations.homeMessage,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
