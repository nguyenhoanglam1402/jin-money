import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jin_app/firebase_options.dart';
import 'package:jin_app/providers/provider.dart';
import 'package:jin_app/routers/main.dart';
import 'package:jin_app/theme/light_theme.dart';
import 'package:jin_app/event/firebase_authentication.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const CombineProvider(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void firebaseTokenTrackSubscribe() {
    FirebaseAuthenticateEvents.onListenAuthStateChange(context);
  }

  @override
  void initState() {
    firebaseTokenTrackSubscribe();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: FToastBuilder(),
      locale: const Locale('en', 'US'),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'Jin',
      theme: LightTheme().themeData,
      routerConfig: routers,
    );
  }
}

