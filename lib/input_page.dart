import 'package:flutter/material.dart';
import 'bus_details.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 25.0,
                backgroundColor: Color(0xff3f51b5),
                child: IconButton(
                  icon: Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  iconSize: 35.0,
                ),
              ),
              Text(
                'Local Bus Dhaka route',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Choose your bus station',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 15.0, right: 40.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.my_location,
                          size: 18,
                          color: Colors.white,
                        ),
                        labelText: 'Source',
                        filled: true,
                        fillColor: Colors.white),
                    style: TextStyle(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.location_on,
                          size: 18,
                          color: Colors.white,
                        ),
                        labelText: 'Destination',
                        filled: true,
                        fillColor: Colors.white),
                    style: TextStyle(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffe1e2e1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                shape: BoxShape.rectangle,
              ),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 8.0,bottom: 8.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: ListTile(
                          title: Text('7 No Bus'),
                          leading: Icon(Icons.directions_bus),
                          trailing: Text('Local'),
                          subtitle: Text('Gabtoli - Zatrabari'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BusDetails()));
                          },
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
