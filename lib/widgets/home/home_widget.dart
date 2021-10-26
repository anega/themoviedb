import 'package:flutter/material.dart';

class HomeScreenWidget extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Home screen.'),
      ),
    );
  }
}
