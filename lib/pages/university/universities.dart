import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/widgets/Hospital/hospitalRoundbox.dart'; //used hospital rounded box
import 'package:url_launcher/url_launcher.dart';

class Universities extends StatelessWidget {
  static const routeName = '/university/universitesPage';

  List<UniversityModel> _universities = [
    UniversityModel(
      name: "University of Dhaka",
      location: "Nilkhet Rd, Dhaka 1000",
      picture: "https://i.dawn.com/primary/2016/03/56df20c28d29d.jpg",
      icon:
          'https://upload.wikimedia.org/wikipedia/en/thumb/c/cb/Dhaka_University_logo.svg/1200px-Dhaka_University_logo.svg.png',
      path: 'University+of+Dhaka',
    ),
    UniversityModel(
      name: "Jahangirnagar University",
      location: "Kalabagan Rd, Savar Union 1342",
      picture: "https://www.newagebd.com/files/records/news/202001/95552_184.jpg",
      icon:
          'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/big_2/public/feature/images/ju_logo.jpg?itok=MUyEnGjI',
      path: 'Jahangirnagar+University',
    ),
    UniversityModel(
      name: "Jagannath University",
      location: "9, 10 Chittaranjan Ave, Dhaka 1100",
      picture: "https://www.observerbd.com/2015/02/14/1423926928.jpg",
      icon:
          'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/big_2/public/feature/images/jnu_logo_0_0.jpg?itok=PMOgQjb9',
      path: 'Jagannath+University',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: _universities.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 05),
                child: InkWell(
                  onTap: (){
                    _showPopup(context, _universities[index].name,_universities[index].location);
                  },
                  child: RoundedBox(
                    name: _universities[index].name,
                    location: _universities[index].location,
                    imageURL: _universities[index].picture,
                    iconURL: _universities[index].icon,
                    callback:(){
                      _launchMapView(path: _universities[index].path);
                    },
                    callbackTwo: (){
                      _launchDirMapView(path: _universities[index].path);
                    },
                  ),
                ),
              );
            }),
      ),
    );
  }
}

Future<bool> _showPopup(BuildContext context, title, subtitle) {
  return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        contentPadding: EdgeInsets.only(left: 20),
        title: Text(
          title,
          style: TextStyle(fontSize: 22),
          overflow: TextOverflow.fade,
        ),
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Icon(Icons.location_on),
              Text(
                subtitle,
                style: TextStyle(fontSize: 17),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ));
}

 void _launchMapView({String path}) async {
  String url = 'https://www.google.com/maps/search/$path/';
   if(await canLaunch(url)){
     await launch(url);
   }
   else{
     throw 'could not launch $url';
   }
 }

 void _launchDirMapView({String path}) async {
  String url = 'https://www.google.com/maps/dir//$path/';
   if(await canLaunch(url)){
     await launch(url);
   }
   else{
     throw 'could not launch $url';
   }
 }

class UniversityModel {
  final String name;
  final String location;
  final String picture;
  final String icon;
  final String path;

  UniversityModel({
    this.name,
    this.location,
    this.picture,
    this.icon,
    this.path,
  });
}
