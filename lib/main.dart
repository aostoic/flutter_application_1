import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/onboarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.grey[300],
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.deepOrangeAccent,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.orange,
            elevation: 0,
          ),
        ),
        home: OnboardingScreen(),
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('Welcome to Flutter'),
        //   ),
        //   body: Center(
        //     //child: Text(wordPair.asPascalCase), // REPLACE with...
        //     child: RandomWords(), // ...this line
        //   ),
        // ),
        routes: {
          'login_person': (_) => const LoginPersonScreen(),
        });
  }
}
