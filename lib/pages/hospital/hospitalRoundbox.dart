import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/pages/hospital/hospitaldetails.dart';

class HospitalRoundedbox extends StatelessWidget {
//  static const routeName = '/hospital/hospitalsPage';

  final hospitalname;
  final hospitallocation;
  final picture;
  final icons;
  HospitalRoundedbox(
      {this.hospitalname, this.hospitallocation, this.picture, this.icons});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print('press the kew');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HospitalDetails()));
        },
        child: Material(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white60,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.red],
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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage(picture), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(08),
                        child: CircleAvatar(
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(icons),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          radius: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Icon(Icons.home,
                                        size: 25, color: Colors.white),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 03, top: 15),
                                  child: Center(
                                    child: Text(
                                      hospitalname,
                                      style: TextStyle(
                                          color: Colors.black
                                          ,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 05),
                                  child: Icon(
                                    Icons.location_on,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 03, top: 05),
                                  child: Center(
                                    child: Text(
                                      hospitallocation,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 05,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 155, bottom: 0),
                                child: Row(
                                  children: <Widget>[
                                    _buttonlist(
                                      onpress: () {
                                        print('i am home icon');
                                      },
                                      icons: Icons.home,
                                      colors: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 05,
                                    ),
                                    _buttonlist(
                                      onpress: () {
                                        print('i am vavigarion icon');
                                      },
                                      icons: Icons.navigation,
                                      colors: Colors.blue,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}

class _buttonlist extends StatelessWidget {
  final IconData icons;
  final Color colors;
  final Function onpress;
  _buttonlist({this.icons, this.colors, this.onpress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icons),
          radius: 20,
        ),
      ),
    );
  }
}
