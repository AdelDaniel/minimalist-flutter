import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/button.dart';
import 'package:login_minimalist/widget/first.dart';
import 'package:login_minimalist/widget/forgot.dart';
import 'package:login_minimalist/widget/inputEmail.dart';
import 'package:login_minimalist/widget/password.dart';
import 'package:login_minimalist/widget/rotated_title_text.dart';
import 'package:login_minimalist/widget/textLogin.dart';
import '../widget/rotated_title_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  const RotatedTitleText(
                    title: 'Sign In',
                  ),
                  const TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
