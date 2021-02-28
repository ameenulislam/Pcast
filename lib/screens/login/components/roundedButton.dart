import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const RoundedButton(
      {@required this.text, @required this.color, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size.height * 0.06,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
