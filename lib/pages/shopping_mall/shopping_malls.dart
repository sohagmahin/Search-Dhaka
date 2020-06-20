import 'package:android_intent/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/models/location.dart';
import 'package:local_bus_dhaka_route/models/place.dart';
import 'package:local_bus_dhaka_route/widgets/Bus/rounded_box.dart';

class ShoppingMalls extends StatelessWidget {
  static const routeName = '/shopping_mall/shopping_malls';

  List<Place> shoppingMallList = [
    Place(
      name: 'Jamuna Future Park',
      address: 'KA-244, Kuril, Progoti Shoroni, Dhaka',
      featureImageUrl:
          'https://www.jamunafuturepark.com/images/slider1/slide1.jpg',
      location: Location(
        placeName: 'Jamuna Future Park',
        latitude: 23.813038,
        longitude: 90.422191,
      ),
      startColor: Colors.lime,
      endColor: Colors.greenAccent,
      visitingTime: null,
      description: '',
    ),
    Place(
      name: 'Bashundhara City',
      address: '3 No Tejturi Bazar, West, Panthapath, Dhaka 1215',
      featureImageUrl:
          'https://media-cdn.tripadvisor.com/media/photo-s/05/61/3b/88/bashundhara-city-shopping.jpg',
      location: Location(
        placeName: 'Bashundhara City',
        latitude: 23.750613,
        longitude: 90.390993,
      ),
      startColor: Colors.deepPurple,
      endColor: Colors.yellowAccent,
      visitingTime: null,
      description: '',
    ),
    Place(
      name: 'New Market',
      address: 'Mirpur Rd, Dhaka 1205',
      featureImageUrl:
          'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/big_2/public/feature/images/new_market.jpg?itok=OqUujmiD',
      location: Location(
        placeName: 'New Market',
        latitude: 23.733204,
        longitude: 90.383770,
      ),
      startColor: Colors.deepOrange,
      endColor: Colors.yellow,
      visitingTime: null,
      description: '',
    ),
    Place(
      name: 'Saad Musa City Center',
      address: 'Ka-189, Jomoz Road, Joashahara, Kuril, Vatara Dhaka, 1229',
      featureImageUrl:
          'https://www.thedailystar.net/sites/default/files/beta2/uploads/2013/09/SAAD-MUSA-City-Center5.jpg',
      location: Location(
        placeName: 'Saad Musa City Center',
        latitude: 23.818093,
        longitude: 90.420342,
      ),
      startColor: Colors.indigoAccent,
      endColor: Colors.cyan,
      visitingTime: null,
      description: '',
    ),
    Place(
      name: 'Eastern plaza',
      address: 'Sonargaon Road, Dhaka 1205',
      featureImageUrl: 'https://i.ytimg.com/vi/I44TVJRRJ_M/maxresdefault.jpg',
      location: Location(
        placeName: 'Eastern plaza shopping complex',
        latitude: 23.743883,
        longitude: 90.392037,
      ),
      startColor: Colors.lightBlue,
      endColor: Colors.yellowAccent,
      visitingTime: null,
      description: '',
    ),
    Place(
      name: 'North Tower',
      address: 'North Tower, Sonargaon Janapath, Dhaka 1230',
      featureImageUrl: 'https://photos.wikimapia.org/p/00/00/95/22/57_big.jpg',
      location: Location(
        placeName: 'North Tower',
        latitude: 23.874163,
        longitude: 90.400093,
      ),
      startColor: Colors.lightGreenAccent,
      endColor: Colors.indigo,
      visitingTime: null,
      description: '',
    ),
    Place(
      name: 'Fortune shopping mall',
      address: 'Fortune Tower, Shahid Sangbadik Selina Parvin Rd, Dhaka 1217',
      featureImageUrl:
          'https://mapio.net/images-p/121957415.jpg',
      location: Location(
        placeName: 'Fortune shopping mall',
        latitude: 23.746374,
        longitude: 90.412156,
      ),
      startColor: Colors.orange,
      endColor: Colors.redAccent,
      visitingTime: null,
      description: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Malls'),
      ),
      body: Container(
          margin: const EdgeInsets.all(10.0),
          child: ListView.builder(
              itemCount: shoppingMallList.length,
              itemBuilder: (context, index) {
                Location location = shoppingMallList[index].location;
                var mapSchema =
                    'geo:${location.latitude},${location.longitude}';
                double lat = location.latitude;
                double lon = location.longitude;
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RoundedBox(
                    title: shoppingMallList[index].name,
                    location: shoppingMallList[index].address,
                    imageUrl: shoppingMallList[index].featureImageUrl,
                    startColor: shoppingMallList[index].startColor,
                    endColor: shoppingMallList[index].endColor,
                    iconColor: Colors.orange,
                    functionOne: () {
                      _displayMapInGoogleMaps(lat, lon);
                    },
                    functionTwo: () {
                      _launchTurnByTurnNavigationInGoogleMaps(lat, lon);
                    },
                  ),
                );
              })),
    );
  }

  void _displayMapInGoogleMaps(double lat, double lon) {
    int zoomLevel = 17;
    final AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: Uri.encodeFull('geo:$lat,$lon?z=$zoomLevel'),
        package: 'com.google.android.apps.maps');
    intent.launch();
  }

  void _launchTurnByTurnNavigationInGoogleMaps(double lat, double lon) {
    final AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: Uri.encodeFull('google.navigation:q=$lat,$lon'),
        package: 'com.google.android.apps.maps');
    intent.launch();
  }
}
