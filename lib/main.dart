import 'package:flutter/material.dart';
import 'package:themoviedb/constants.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/home/home_widget.dart';

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
      initialRoute: AuthWidget.id,
      routes: {
        AuthWidget.id: (context) => AuthWidget(),
        HomeScreenWidget.id: (context) => HomeScreenWidget(),
      },
    );
  }
}
