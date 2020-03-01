import 'package:flutter/material.dart';
import '../../widget/rounded_box.dart';
import 'package:provider/provider.dart';
import 'package:local_bus_dhaka_route/provider/place_provider.dart';
import 'place_details.dart';

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
              return Container(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(PlaceDetails.routeName,arguments: index);
                  },
                  child: RoundedBox(
                    title: places[index].name,
                    location: places[index].location,
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
}
