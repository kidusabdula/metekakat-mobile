import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metekakat',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1A1F38),
        primaryColor: Color(0xFF00DDEB),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: Scaffold(
        body: Center(
          child: Text('Welcome to Metekakat'),
        ),
      ),

    );
  }
}
