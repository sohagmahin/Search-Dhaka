import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/widgets/Hospital/hospitalRoundbox.dart'; //used hospital rounded box

class Universities extends StatelessWidget {
  static const routeName = '/university/universitesPage';

  List<UniversityModel> _universities = [
    UniversityModel(
      name: "University of Dhaka",
      location: "Nilkhet Rd, Dhaka 1000",
      picture: "https://i.dawn.com/primary/2016/03/56df20c28d29d.jpg",
      icon:
          'https://upload.wikimedia.org/wikipedia/en/thumb/c/cb/Dhaka_University_logo.svg/1200px-Dhaka_University_logo.svg.png',
    ),
    UniversityModel(
      name: "Jahangirnagar University",
      location: "Kalabagan Rd, Savar Union 1342",
      picture: "https://www.newagebd.com/files/records/news/202001/95552_184.jpg",
      icon:
          'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/big_2/public/feature/images/ju_logo.jpg?itok=MUyEnGjI',
    ),
    UniversityModel(
      name: "Jagannath University",
      location: "9, 10 Chittaranjan Ave, Dhaka 1100",
      picture: "https://www.observerbd.com/2015/02/14/1423926928.jpg",
      icon:
          'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/big_2/public/feature/images/jnu_logo_0_0.jpg?itok=PMOgQjb9',
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
                child: RoundedBox(
                  name: _universities[index].name,
                  location: _universities[index].location,
                  picture: _universities[index].picture,
                  icon: _universities[index].icon,
                ),
              );
            }),
      ),
    );
  }
}

class UniversityModel {
  final String name;
  final String location;
  final String picture;
  final String icon;

  UniversityModel({
    this.name,
    this.location,
    this.picture,
    this.icon,
  });
}
