import 'package:flutter/material.dart';

import 'components/fb_btn.dart';
import 'components/header.dart';
import 'components/inputField.dart';
import 'components/roundedButton.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Padding(
          padding: EdgeInsets.only(top: 120, left: 30, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(
                height: size.height * 0.04,
              ),
              InputField(
                hintText: "Enter you email",
                icon: Icon(
                  Icons.mail_outline,
                  color: Colors.white54,
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              InputField(
                hintText: "Enter you password",
                icon: Icon(
                  Icons.lock_outline,
                  color: Colors.white54,
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              RoundedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                  print("Pressed");
                },
                text: "Login",
                color: Colors.blue,
              ),
              FlatButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(color: Colors.white60),
                    ),
                  )),
              SizedBox(
                height: size.height * 0.02,
              ),
              LoginWithFbBtn(),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                text: "Register",
                color: Colors.pink,
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
