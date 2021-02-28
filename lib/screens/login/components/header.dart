import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [Image.asset("assets/LOGO.png")],
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Text(
          "Episodic series of",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: 'roboto'),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          "digital audio",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: 'roboto'),
        ),
      ],
    );
  }
}
