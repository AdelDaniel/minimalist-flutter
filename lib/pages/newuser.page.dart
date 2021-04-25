import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/buttonNewUser.dart';
import 'package:login_minimalist/widget/newEmail.dart';
import 'package:login_minimalist/widget/newName.dart';
import 'package:login_minimalist/widget/password.dart';
import '../widget/rotated_title_text.dart';

import 'package:login_minimalist/widget/textNew.dart';
import 'package:login_minimalist/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                Row(
                  children: <Widget>[
                    RotatedTitleText(title: 'Sign Up'),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
