import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final String image;
  final String label;

  IconBtn({@required this.image, @required this.label});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(label),
        SizedBox(
          height: size.height * 0.02,
        ),
        Center(
          child: Text(
            label,
            style: TextStyle(color: Colors.white54),
          ),
        )
      ],
    );
  }
}
