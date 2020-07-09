import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RoundedBox extends StatelessWidget {
//  static const routeName = '/hospital/hospitalsPage';

  final name;
  final location;
  final imageURL;
  final iconURL;
  double radius = 20;
  final Function callback;

  RoundedBox({this.name, this.location, this.imageURL, this.iconURL,this.callback});

  @override
  Widget build(BuildContext context) {
    double _originalHeight = MediaQuery.of(context).size.height;
    double _originalWidth = MediaQuery.of(context).size.width;
    print('height: $_originalHeight');
    print('width: $_originalWidth');
    if (_originalHeight > 700) {
      radius = 25;
    }
    return Material(
        borderRadius: BorderRadius.circular(40), //40%
        color: Colors.white60,
        child: Container(
          margin: EdgeInsets.all(10),
          height: _originalHeight * 0.18, //120
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.lightGreenAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 2,
                    offset: Offset.zero,
                    color: Colors.black),
              ]),
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.6,
                child: CachedNetworkImage(
                  imageUrl: imageURL,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  CachedNetworkImage(
                      imageUrl: iconURL,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Center(
                            child: Icon(Icons.error),
                          ),
                      imageBuilder: (context, iconProvider) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          height: _originalWidth * 0.20,
                          width: _originalWidth * 0.20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 3,
                                    spreadRadius: 3,
                                    offset: Offset.zero)
                              ],
                              image: DecorationImage(
                                image: iconProvider,
                                fit: BoxFit.cover,
                              )),
                        );
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: _originalHeight * 0.035),
                          child: _buildLabel(
                              text: name,
                              textColor: Colors.indigo,
                              iconData: Icons.local_hospital,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        _buildLabel(
                            text: location,
                            textColor: Colors.black,
                            iconData: Icons.location_on,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        SizedBox(
                          height: 05,
                        ),
                        buildPairNavLocButton(originalWidth: _originalWidth,onPressed: callback)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Container buildPairNavLocButton({double originalWidth, double uRadius,Function onPressed}) {
    return Container(
        padding: EdgeInsets.only(left: originalWidth * 0.35, bottom: 0),
        //left 155
        child: Row(
          children: <Widget>[
            _buildButton(
              onPressed: onPressed,
              icons: Icons.place,
              colors: Colors.blue,
            ),
            SizedBox(
              width: 05,
            ),
            _buildButton(
              onPressed: () {
                print('pressed navigation button');
              },
              icons: Icons.navigation,
              colors: Colors.blue,
              radius: uRadius,
            ),
          ],
        ));
  }

  Widget _buildLabel(
      {String text,
      IconData iconData,
      Color textColor,
      FontWeight fontWeight,
      double fontSize}) {
    return Row(
      children: <Widget>[
        Container(
          child: Icon(iconData, size: 25, color: Colors.white),
        ),
        Container(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
            overflow: TextOverflow.fade,
          ),
        ),
      ],
    );
  }
}

class _buildButton extends StatelessWidget {
  final IconData icons;
  final Color colors;
  final Function onPressed;
  final double radius;

  _buildButton({this.icons, this.colors, this.onPressed, this.radius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icons),
          radius: radius,
        ),
      ),
    );
  }
}
