import 'package:flutter/material.dart';
import 'package:pcast/constants.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Image.asset("assets/LOGO.png",
            height: size.height * 0.27, width: size.width * 0.27),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Browse",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  cursorColor: Colors.white60,
                  style: TextStyle(color: Colors.white60),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search, color: Colors.white54),
                      hintText: "Search",
                      contentPadding: EdgeInsets.only(top: 8, left: 10),
                      hintStyle: TextStyle(color: Colors.white54),
                      fillColor: Color(010304)),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset("assets/Elements/Authors/On.png"),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Image.asset("assets/Elements/Categories/Off.png"),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Image.asset("assets/Elements/Episodes/Off.png"),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Image.asset("assets/Elements/Podcasts/Off.png"),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Image.asset("assets/Elements/Topics/Off.png"),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Center(
                child: Image.asset("assets/Box/Authors.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
