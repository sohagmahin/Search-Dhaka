import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/models/location.dart';
import '../../widgets/Bus/rounded_box.dart';
import 'package:provider/provider.dart';
import 'package:local_bus_dhaka_route/provider/place_provider.dart';
import 'place_details.dart';
import 'package:android_intent/android_intent.dart';

class Places extends StatelessWidget {
  static const routeName = '/touristPage';

  @override
  Widget build(BuildContext context) {
    List places = Provider.of<PlaceProvider>(context, listen: false).places;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Places'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) {
              Location location = places[index].location;
              var mapSchema = 'geo:${location.latitude},${location.longitude}';
              double lat = location.latitude;
              double lon = location.longitude;
              return Container(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(PlaceDetails.routeName, arguments: index);
                  },
                  child: RoundedBox(
                    title: places[index].name,
                    location: places[index].address,
                    functionOne: (){
                      _displayMapInGoogleMaps(lat,lon);
                    },
                    functionTwo: (){
                      _launchTurnByTurnNavigationInGoogleMaps(lat,lon);
                    },
                    imageUrl: places[index].featureImageUrl,
                    startColor: places[index].startColor,
                    endColor: places[index].endColor,
                    shadowColor: places[index].shadowColor,
                    iconColor: places[index].iconColor,
                  ),
                ),
              );
            }),
      ),
    );
  }

  void _displayMapInGoogleMaps(double lat,double lon) {
    int zoomLevel = 17;
    final AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: Uri.encodeFull('geo:$lat,$lon?z=$zoomLevel'),
        package: 'com.google.android.apps.maps');
    intent.launch();
  }

  void _launchTurnByTurnNavigationInGoogleMaps(double lat,double lon) {
    final AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: Uri.encodeFull(
            'google.navigation:q=$lat,$lon'),
        package: 'com.google.android.apps.maps');
    intent.launch();
  }

}
