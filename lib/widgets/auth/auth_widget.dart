import 'package:flutter/material.dart';
import 'package:themoviedb/constants.dart';
import 'package:themoviedb/widgets/auth/login_form_widget.dart';

class AuthWidget extends StatefulWidget {
  static const String id = 'auth_screen';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.',
                    style: kDefaultTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Register'),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(kMainLightBlueColor),
                      minimumSize: MaterialStateProperty.all(Size.zero),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(
                          left: 0.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'If you signed up but didn\'t get your verification email, click here to have it resent.',
                    style: kDefaultTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Verify your email'),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(kMainLightBlueColor),
                      minimumSize: MaterialStateProperty.all(Size.zero),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(
                          left: 0.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  LoginFormWidget(),
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
