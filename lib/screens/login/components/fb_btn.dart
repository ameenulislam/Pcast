import 'package:flutter/material.dart';

class LoginWithFbBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color.fromRGBO(43, 93, 149, 100),
        borderRadius: BorderRadius.circular(18),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Center(
          child: Text(
            "Login with facebook",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
