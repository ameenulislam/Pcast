import 'package:flutter/material.dart';
import 'package:pcast/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kprimaryColor,
          title: Image.asset(
            "assets/LOGO.png",
            height: size.height * 0.27,
            width: size.width * 0.27,
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/search');
                }),
            IconButton(
                icon: Icon(
                  Icons.dehaze,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20))),
                padding: EdgeInsets.only(top: 10),
                child: Image.asset("assets/space.jpg"),
              ),
              Positioned(
                right: 0,
                top: 64,
                child: Image.asset("assets/Podcast/Double.png"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Listen Podcasts",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto'),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Recent",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      "Topics",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Text(
                      "Authors",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Text(
                      "Episodes",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Image.asset("assets/Podcast/Mini.png"),
                    Image.asset("assets/Podcast/Mini2.png")
                  ],
                ),
                Divider(
                  color: Colors.white54,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Podcast Authors",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Recent",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Text(
                      "Most podcasts",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Text(
                      "Most followed",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Image.asset("assets/Frame 4.png")
              ],
            ),
          )
        ])));
  }
}
