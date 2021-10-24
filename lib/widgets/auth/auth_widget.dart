import 'package:flutter/material.dart';
import 'package:themoviedb/constants.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBlueColor,
      appBar: AppBar(
        title: Text('Login to your account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                      'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.'),
                  SizedBox(height: 16.0),
                  Text(
                      'If you signed up but didn\'t get your verification email, click here to have it resent.'),
                  SizedBox(height: 32.0),
                ],
              ),
            ),
            Container(
              color: kMainBlueColor,
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              // constraints: BoxConstraints.expand(),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Join the community'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
