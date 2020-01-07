import 'package:flutter/material.dart';
import '../constant.dart';

class BusDetails extends StatelessWidget {
  Widget _buildBusIntro() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
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
          '7 No Bus',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'Gabtoli - Zatrabari',
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

  Widget _buildBusStopages({String stopageName, int index}) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            stopageName,
            style: TextStyle(fontSize: 18),
          ),
          Icon(index != 9 ? Icons.arrow_downward : null),
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
            _buildCard(busChild: _buildBusIntro(), cardHeight: 200),
            Expanded(
              child: _buildCard(
                busChild: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Center(
                          child: _buildBusStopages(
                              stopageName: 'Gabtoli', index: index));
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: FlatButton(
                color: Colors.lightGreen,
                child: Text('View On Map'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
