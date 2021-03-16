import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:myApp/utils/my_colors.dart';

import 'home_page.dart';

TextEditingController _usernameController = TextEditingController();
TextEditingController _passController = TextEditingController();

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: LoginForm(),
          ),
        ));
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 28.0,
        ),
        Image.asset(
          'assets/00google.png',
          height: 100.0,
          width: 100.0,
          fit: BoxFit.cover,
        ),
        Text(
          "DSC Esprit",
          style: TextStyle(color: MyColors.mBlack),
        ),
        SizedBox(
          height: 48.0,
        ),
        Material(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: MyColors.textFieldBackground,
          child: TextField(
            controller: _usernameController,
            cursorColor: MyColors.mBlue,
            maxLines: 1,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
                border: InputBorder.none,
                hintText: 'Username',
                prefixIcon: Icon(
                  FeatherIcons.user,
                  color: MyColors.mBlue,
                )),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Material(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: MyColors.textFieldBackground,
          child: TextField(
            obscureText: true,
            controller: _passController,
            cursorColor: MyColors.mBlue,
            maxLines: 1,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
                border: InputBorder.none,
                hintText: 'Password',
                prefixIcon: Icon(
                  FeatherIcons.user,
                  color: MyColors.mBlue,
                )),
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
        Row(
          children: [
            Expanded(
                child: CupertinoButton(
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if (_usernameController.text.isNotEmpty &&
                    _passController.text == 'esprit') {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>
                              HomePage(_usernameController.text)));
                }
              },
            ))
          ],
        )
      ],
    );
  }
}
