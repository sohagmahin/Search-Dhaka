import 'package:flutter/material.dart';
import '../../pages/tourist/place_details.dart';
import 'package:cached_network_image/cached_network_image.dart';

const fixedGradient = LinearGradient(
  colors: [Colors.orange, Colors.yellowAccent],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  stops: [0.5, 1],
);

class RoundedBox extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl;
  final Function functionOne;
  final Function functionTwo;
  final Color startColor;
  final Color endColor;
  final Color iconColor;
  final Color shadowColor;

  RoundedBox({
    @required this.title,
    @required this.location,
    @required this.imageUrl,
    this.functionOne,
    this.functionTwo,
    this.startColor,
    this.endColor,
    this.iconColor,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
//      elevation: 3,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.black12,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 250,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: startColor == null && endColor == null
              ? fixedGradient
              : LinearGradient(
                  colors: [startColor, endColor],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 1],
                ),
        ),
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.4,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                imageBuilder: (context, imageProvider) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        location,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 180,
              left: 120,
              child: Row(
                children: <Widget>[
                  _buildCircularButton(
                      Icons.location_on, iconColor, functionOne),
                  SizedBox(
                    width: 20,
                  ),
                  _buildCircularButton(
                      Icons.navigation, iconColor, functionTwo),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell _buildCircularButton(
      IconData iconData, Color iconColor, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 15,
        shape: CircleBorder(),
        child: CircleAvatar(
          radius: 27,
          child: Icon(
            iconData,
            color: iconColor,
            size: 30,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
