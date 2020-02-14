import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String title;
  final String content;
  final Color color;

  CustomCard({this.title, this.content, this.color});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    EdgeInsetsGeometry _paddingContainer() {
      return EdgeInsets.only(
        left: screenWidth * 0.05,
        right: screenWidth * 0.05,
      );
    }
      return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Card(
            color: color,
            elevation: 10,
            margin: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenWidth * 0.01),
            child: Container(
              padding: _paddingContainer(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: screenWidth * 0.06,
                  ),
                  Text(content),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                height: screenHeight*0.035,
                width: screenWidth*0.8,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
