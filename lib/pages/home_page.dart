import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:local_bus_dhaka_route/pages/localbus/main.dart';
import 'package:local_bus_dhaka_route/pages/university/universities.dart';

import 'package:local_bus_dhaka_route/pages/shopping_mall/shopping_malls.dart';
import 'package:local_bus_dhaka_route/pages/tourist/places.dart';
import 'package:local_bus_dhaka_route/pages/train/TrainStation.dart';
import 'package:local_bus_dhaka_route/pages/hotline/hotline_numbers.dart';
import 'package:local_bus_dhaka_route/widgets/home_page_drawer.dart';

import 'hospital/hospitallist.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>exitDialog(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search Dhaka'),
          centerTitle: true,
        ),
        drawer: HomePageDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: <Widget>[
              CustomButton(color: Colors.greenAccent,iconData: FontAwesomeIcons.bus,title: 'Local Bus',onPressed: (){
                Navigator.of(context).pushNamed(LocalBusMain.routeName);
              },),
              CustomButton(color: Colors.lightGreen,iconData: FontAwesomeIcons.university,title: 'University',onPressed: (){
                Navigator.of(context).pushNamed(Universities.routeName);
              }),
              CustomButton(color: Colors.blue,iconData: FontAwesomeIcons.hospital,title: 'Hospital',onPressed: (){
                Navigator.of(context).pushNamed(Hospitals.routeName);
              }),
              CustomButton(color: Colors.orange,iconData: Icons.place,title: 'Tourist Spot',onPressed: (){
                Navigator.of(context).pushNamed(Places.routeName);
              }),
              CustomButton(color: Colors.amber,iconData: FontAwesomeIcons.train,title: 'Train Station',onPressed: (){
                Navigator.of(context).pushNamed(TrainStation.routeName);
              }),
              CustomButton(color: Colors.tealAccent,iconData: FontAwesomeIcons.shopify,title: 'Shopping Mall',onPressed: (){
                Navigator.of(context).pushNamed(ShoppingMalls.routeName);
              }),
              CustomButton(color: Colors.indigoAccent,iconData: FontAwesomeIcons.ambulance,title: 'Hotline Number',onPressed: (){
                Navigator.of(context).pushNamed(HotlineNumbers.routeName);
              })
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> exitDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Do you want to exit'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () => exit(0),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final IconData iconData;
  final Function onPressed;
  CustomButton({this.title,this.color,this.iconData,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 10,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 120,
            child: CircleAvatar(
              backgroundColor: Colors.white54,
              child: Icon(
                iconData,
                size: 50,
              ),
              radius: 150,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
