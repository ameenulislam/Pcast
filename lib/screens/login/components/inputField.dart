import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final Widget icon;
  const InputField({@required this.hintText, @required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8))),
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: icon,
            hintText: "Enter your email",
            hintStyle: TextStyle(color: Colors.white30)),
      ),
    );
  }
}
