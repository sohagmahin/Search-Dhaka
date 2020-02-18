import 'package:flutter/material.dart';
import '../widget/rounded_box.dart';

class TouristPage extends StatelessWidget {
  static const routeName = '/touristPage';

  List<SpotModel> placeList = [
    SpotModel(
      name: 'Lalbagh Fort',
      location: 'Lalbagh Rd, Dhaka 1211',
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/08/30/22/33/fort-aurangabad-2698844_960_720.jpg',
      startColor: Colors.deepOrange,
      endColor: Colors.orangeAccent,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.deepOrange,
    ),
    SpotModel(
      name: 'Ahsan Manzil Museum',
      location: '18 kumartuli, Islampur Rd, Dhaka 1100',
      imageUrl:
          'https://lonelyplanetimages.imgix.net/a/g/hi/t/fc09d33522052723c107a6d1fe5741b0-ahsan-manzil.jpg',
      startColor: Colors.green,
      endColor: Colors.greenAccent,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.lightBlue,
    ),
    SpotModel(
      name: 'Shaheed Minar',
      location: 'Shahīd Minār, Secretariate Road, Dhaka',
      imageUrl:
          'https://www.ontaheen.com/wp-content/uploads/2018/02/Shahid-Minar-picture.jpg',
      startColor: Colors.lime,
      endColor: Colors.limeAccent,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.lightGreenAccent,
    )  ,
    SpotModel(
      name: 'Sonargaon',
      location: 'Sonargaon Museum, Sonargaon',
      imageUrl:
          'https://mytriphack.com/wp-content/uploads/2018/04/Sonargaon-museum-complex.jpg',
      startColor: Colors.lime,
      endColor: Colors.limeAccent,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.lightGreenAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Places'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: placeList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(top: 10),
                child: RoundedBox(
                  title: placeList[index].name,
                  location: placeList[index].location,
                  imageUrl: placeList[index].imageUrl,
                  startColor: placeList[index].startColor,
                  endColor: placeList[index].endColor,
                  shadowColor: placeList[index].shadowColor,
                  iconColor: placeList[index].iconColor,
                ),
              );
            }),
      ),
    );
  }
}

class SpotModel {
  final String name;
  final String location;
  final String imageUrl;
  final Color startColor;
  final Color endColor;
  final Color iconColor;
  final Color shadowColor;
  SpotModel(
      {this.name,
      this.location,
      this.imageUrl,
      this.startColor,
      this.endColor,
      this.iconColor,
      this.shadowColor});
}
