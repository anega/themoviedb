import 'package:flutter/material.dart';
import 'package:themoviedb/constants.dart';
import 'package:themoviedb/screens/auth_screen.dart';
import 'package:themoviedb/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: kMainBlueColor,
        ),
      ),
      initialRoute: AuthScreen.id,
      routes: {
        AuthScreen.id: (context) => AuthScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
