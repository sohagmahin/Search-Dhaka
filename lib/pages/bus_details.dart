import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../util/constant.dart';
import '../models/location.dart';

class BusDetails extends StatelessWidget {
  final String busName;
  final String sourceName;
  final String destinationName;
  final Location sourceLocation;
  final Location destinationLocation;
  final List stopageList;
  BusDetails({
    this.busName,
    this.sourceName,
    this.destinationName,
    this.sourceLocation,
    this.destinationLocation,
    this.stopageList,
  });

  final double busProfileContainerHeight = 100;
  final double busProfileContainerWidth = 100;

  Widget _buildBusIntro() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          child: Icon(
            Icons.directions_bus,
            size: 50,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.lime, width: 3),
          ),
        ),
        Text(
          busName,
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '$sourceName - $destinationName',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _buildCard({Widget busChild, double cardHeight}) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
      child: busChild,
      height: cardHeight,
      decoration: BoxDecoration(
        border:
            Border.all(color: Colors.yellowAccent, width: 3), // or Colors.grey
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
    );
  }

  Widget _buildBusStopagesName({String stopageName, int index}) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            stopageName,
            style: TextStyle(fontSize: 18),
          ),
          Icon(index != (stopageList.length - 1) ? Icons.arrow_downward : null),
        ],
      ),
    );
  }

  _launchURL(String url, BuildContext context) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Pleace install Google Maps'),
                content: Text('Install Google Maps Or Chrome Brower!'),
              ));
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    String url =
        'http://maps.google.com/maps?saddr=${sourceLocation.latitude},${sourceLocation.longitude}&daddr=${destinationLocation.latitude},${destinationLocation.longitude}';
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus details'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: KConstant.buildGradient(
              firstColor: Colors.indigo, secondColor: Colors.lightGreenAccent),
        ),
        // or color: Colors.white70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Bus into card
            _buildCard(busChild: _buildBusIntro(), cardHeight: 200.0),
            //Bus Stopage list
            Expanded(
              child: _buildCard(
                busChild: ListView.builder(
                    itemCount: stopageList.length,
                    itemBuilder: (context, index) {
                      return Center(
                          child: _buildBusStopagesName(
                              stopageName: stopageList[index], index: index));
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: FlatButton(
                  color: Colors.lightGreen,
                  child: Text('View On Map'),
                  onPressed: () {
                    _launchURL(url, context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
