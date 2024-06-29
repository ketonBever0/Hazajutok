import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hazajutok/pages/auth/login/login_screen.dart';
import 'package:hazajutok/pages/auth/user/profile_screen.dart';
import 'package:hazajutok/pages/auth/registration/registration_screen.dart';
import 'package:hazajutok/pages/main_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firebase_options.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
}

FirebaseFirestore db = FirebaseFirestore.instance;
FirebaseAnalytics analytics = FirebaseAnalytics.instance;

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  Locale _locale = const Locale('en', '');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        "/main": (BuildContext ctx) => MainScreen(),
        "/register": (BuildContext ctx) => RegistrationScreen(),
        "/login": (BuildContext ctx) => LoginScreen(),
        "/me": (BuildContext ctx) => ProfileScreen(),
        // "/language": (Buildcontext ctx) =>
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    analytics.setAnalyticsCollectionEnabled(true);

    super.initState();
  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  Future<void> testLog() async {
    await analytics.logAppOpen();
  }

  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}
