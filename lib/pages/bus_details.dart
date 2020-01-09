import 'package:flutter/material.dart';
import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import '../constant.dart';
class BusDetails extends StatefulWidget {
  final String busName;
  final String sourceName;
  final String destinationName;
  final List stopageList;
  BusDetails(
      {this.busName, this.sourceName, this.destinationName, this.stopageList});

  @override
  _BusDetailsState createState() => _BusDetailsState();
}

class _BusDetailsState extends State<BusDetails> {
  final double busProfileContainerHeight = 100;
  final double busProfileContainerWidth = 100;

  //start Map functionality
  String _platformVersion = 'Unknown';
//  final _origin = Location(
//      name:
//          "Hall Market, Ring Road, Mohammadpur, Dhaka District, Dhaka Division, 1207, Bangladesh",
//      latitude: 23.77471,
//      longitude: 90.36542);
  final _origin = Location(
      name:
      "N5, Savar Union",
      latitude: 23.845623,
      longitude: 90.256679);
  final _destination = Location(
    name:
        "Farmgate Bus Stop, Kazi Nazrul Islam Avenue, Pashcim Nakhalpara, Lalmatia, Dhaka, Dhaka District, Dhaka Division, 1215, Bangladesh",
    latitude: 23.75724,
    longitude: 90.39022,
  );

  MapboxNavigation _directions;
  bool _arrived = false;
  double _distanceRemaining, _durationRemaining;

  Future<void> initPlatformState() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    _directions = MapboxNavigation(onRouteProgress: (arrived) async {
      _distanceRemaining = await _directions.distanceRemaining;
      _durationRemaining = await _directions.durationRemaining;

      setState(() {
        _arrived = arrived;
      });
      if (arrived) await _directions.finishNavigation();
    });

    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await _directions.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    setState(() {
      _platformVersion = platformVersion;
    });
  }


  void startNavigating() async {
    await _directions.startNavigation(
        origin: _origin,
        destination: _destination,
        mode: NavigationMode.driving,
        simulateRoute: false);
  }
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }
  //end Map functionality

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
          widget.busName,
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '${widget.sourceName} - ${widget.destinationName}',
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
          Icon(index != (widget.stopageList.length - 1)
              ? Icons.arrow_downward
              : null),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    itemCount: widget.stopageList.length,
                    itemBuilder: (context, index) {
                      return Center(
                          child: _buildBusStopagesName(
                              stopageName: widget.stopageList[index],
                              index: index));
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: FlatButton(
                  color: Colors.lightGreen,
                  child: Text('View On Map'),
                  onPressed: () {
                    startNavigating();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
