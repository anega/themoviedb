import 'package:flutter/material.dart';
import 'package:themoviedb/constants.dart';
import 'package:themoviedb/widgets/home/home_widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;

  String? _validateEmail(value) {
    // final Pattern pattern =
    //     r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    //     r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    //     r"{0,253}[a-zA-Z0-9])?)*$";
  }

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailCtrl,
            focusNode: _emailFocusNode,
            onTap: () {
              setState(() {
                _emailFocusNode.requestFocus();
              });
            },
            validator: (value) {
              if (value != null || value!.isNotEmpty) {
                final RegExp regex = RegExp(
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)| (\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                if (!regex.hasMatch(value)) {
                  return 'Enter a valid email address';
                } else {
                  return null;
                }
              } else {
                return 'Enter a valid email address';
              }
            },
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 16.0,
            ),
            decoration: kLoginInputDecoration.copyWith(
              labelText: 'Enter your email',
              labelStyle: TextStyle(
                color: _emailFocusNode.hasFocus
                    ? kMainLightBlueColor
                    : Color(0xFFced4da),
              ),
            ),
          ),
          SizedBox(
            height: 28.0,
          ),
          TextFormField(
            controller: _passwordCtrl,
            focusNode: _passwordFocusNode,
            onTap: () {
              setState(() {
                _passwordFocusNode.requestFocus();
              });
            },
            obscureText: true,
            style: TextStyle(
              fontSize: 16.0,
            ),
            decoration: kLoginInputDecoration.copyWith(
              labelText: 'Enter your password',
              labelStyle: TextStyle(
                color: _passwordFocusNode.hasFocus
                    ? kMainLightBlueColor
                    : Color(0xFFced4da),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  if (_loginFormKey.currentState!.validate()) {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreenWidget.id);
                  }
                },
                child: Text('Login'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(
                    kMainLightBlueColor,
                  ),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Reset password'),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(kMainLightBlueColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
