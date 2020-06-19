import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/3/3d/Dhaka_Airport_Railway_Station_%2802%29.jpg'),
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
              context: context,
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
    BuildContext context,
    String placeName,
    String address,
    String location,
    String imgURL,
    Function callBack,
  }) {
    return InkWell(
      onTap: () {
        customAlertDialog(context, placeName, imgURL, address);
//      _showPopup(context, placeName, address, imgURL);
      },
      child: Card(
        child: ListTile(
          title: Text(placeName),
          subtitle: Text(address),
          leading: Hero(
            tag: placeName,
            child: CachedNetworkImage(
              key: Key(location),
              imageUrl: imgURL,
              fit: BoxFit.cover,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
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
      ),
    );
  }

  void customAlertDialog(BuildContext context, String placeName, String imgURL, String address) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: true,
            builder: (BuildContext context) {
              return Scaffold(
                body: SimpleDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(placeName),
                  children: <Widget>[
                    Hero(
                      tag: placeName,
                      child: CachedNetworkImage(
                        imageUrl: imgURL,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.location_on),
                        Text(
                          address,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        MaterialButton(
                          child: Icon(
                            Icons.location_on,
                            size: 20,
                          ),
                          shape: CircleBorder(),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                        ),
                        RaisedButton(
                          child: Text(
                            'OK',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ],
                ),
              );
            }));
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
