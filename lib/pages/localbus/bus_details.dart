import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../util/constant.dart';
import 'package:provider/provider.dart';
import '../../provider/bus_list_provider.dart';
import '../../widgets/Bus/Rounded_Card.dart';

class BusDetails extends StatelessWidget {
  static const routeName = '/busDtails';

  final double busProfileContainerHeight = 100;
  final double busProfileContainerWidth = 100;

  Widget _buildBusIntro(
      {String busName, String sourceName, String destinationName}) {
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

  Widget _buildBusStopagesName({List stopageList, int index}) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            stopageList[index],
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
    String id = ModalRoute.of(context).settings.arguments as String;
    var bus = Provider.of<BusListProvider>(context).findById(id);

    String url =
        'http://maps.google.com/maps?saddr=${bus.sourceLocation.latitude},${bus.sourceLocation.longitude}&daddr=${bus.destinationLocation.latitude},${bus.destinationLocation.longitude}';
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
            RoundedCard(
                busChild: _buildBusIntro(
                    busName: bus.name,
                    sourceName: bus.sourceName,
                    destinationName: bus.destinationName),
                cardHeight: 200.0),
            //Bus Stopage list
            Expanded(
              child: Container(
                child: RoundedCard(
                  busChild: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                        itemCount: bus.stopageList.length,
                        itemBuilder: (context, index) {
                          return Center(
                              child: _buildBusStopagesName(
                                  stopageList: bus.stopageList, index: index));
                        }),
                  ),
                ),
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
