import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/localbus/conscious_info_page.dart';
import '../pages/tourist/places.dart';

class HomePageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Local Bus Sheba'),
                automaticallyImplyLeading: false,
                centerTitle: true,
              ),
              //_buildHeaderContainer(context),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'সচেতনতা',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.library_books),
                onTap: () {
                  Navigator.of(context).pushNamed(ConsciousInfoPage.routeName);
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Tourist Place',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.place),
                onTap: () {
                  Navigator.of(context).pushNamed(Places.routeName);
                },
              ),
              SizedBox(
                height: 10,
              ),
              _buildAboutListTile(context),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _buildAboutListTile(BuildContext context) {
    return ListTile(
      title: Text(
        'About',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Icon(Icons.person_outline),
      onTap: () {
        _buildAlertDialog(context);
      },
    );
  }

  Container _buildHeaderContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01),
      height: MediaQuery.of(context).size.height * 0.20,
      alignment: Alignment.bottomLeft,
      child: Center(
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(color: Colors.black54, blurRadius: 3, spreadRadius: 5)
          ]),
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.height * 0.06,
            backgroundImage: AssetImage("assets/images/logo.png"),
            // backgroundColor: Colors.indigoAccent,
          ),
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(0, 2))
        ],
        image: DecorationImage(
          image: AssetImage("assets/images/bus_image.jpeg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white70,
            BlendMode.dstATop,
          ),
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0)),
      ),
    );
  }

  _buildAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('About'),
        content:
            Text('Build by Flutter!\nCreated by SOHAG\nCredit: Hasan, Soyab'),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
