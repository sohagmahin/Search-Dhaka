import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TrainStation extends StatelessWidget {
  static const routeName = '/train/trainStation';
  List<TrainModel> trains = [
    TrainModel(
      placeName: 'Kamalapur railway station',
      addressName: 'Kamalapur Road, Dhaka 1222',
      location: '23.731869,90.426111',
      imageUrl: 'https://i.ytimg.com/vi/fVgArBe-quM/maxresdefault.jpg',
    ),
    TrainModel(
      placeName: 'Banani railway station',
      addressName: 'Dhaka 1212',
      location: '23.795654,90.400848',
      imageUrl: 'https://i.ytimg.com/vi/VX3IlLZN32g/maxresdefault.jpg',
    ),
    TrainModel(
        placeName: 'Airport railway station',
        addressName: 'Bir Uttam Ziaur Rahman Rd, Dhaka 1215',
        location: '23.851818,90.408150',
        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Dhaka_Airport_Railway_Station_%2802%29.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Train Stations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: trains.length,
          itemBuilder: (context, index) {
            return buildTrainWidget(
              placeName: trains[index].placeName,
              address: trains[index].addressName,
              location: trains[index].location,
              imgURL: trains[index].imageUrl,
              callBack: () {
                _urlLauncher(destination: trains[index].location);
              },
            );
          },
        ),
      ),
    );
  }

  Widget buildTrainWidget({
    String placeName,
    String address,
    String location,
    String imgURL,
    Function callBack,
  }) {
    return Card(
      child: ListTile(
        title: Text(placeName),
        subtitle: Text(address),
        leading: CachedNetworkImage(
          key: Key(location),
          imageUrl: imgURL,
          fit: BoxFit.cover,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.navigation,
            color: Colors.indigoAccent,
          ),
          tooltip: 'Navigation button',
          onPressed: () {
            callBack();
          },
        ),
      ),
    );
  }

  void _urlLauncher({String destination}) async {
    String url = "https://www.google.com/maps/dir/?api=1" +
        "&destination=" +
        destination +
        "&travelmode=driving&dir_action=navigate";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class TrainModel {
  final String placeName;
  final String addressName;
  final String location;
  final String imageUrl;

  TrainModel({this.placeName, this.addressName, this.location, this.imageUrl});
}
