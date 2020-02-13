import 'package:flutter/material.dart';
import '../widget/source_destination_textField.dart';
import '../widget/bus_list.dart';
import 'package:provider/provider.dart';
import '../provider/bus_list_provider.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget labelText() {
    return const Text(
      'Choose your bus station',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Provider.of<BusListProvider>(context, listen: false).loadData();
  }

  @override
  Widget build(BuildContext context) {
    final double originalHeight = MediaQuery.of(context).size.height;
    final double originalWidth = MediaQuery.of(context).size.width;

    var labelTextPadding =
        EdgeInsets.only(top: originalHeight * 0.01, left: originalWidth * 0.04);

    var textFieldPadding = EdgeInsets.only(
        left: originalWidth * 0.04,
        top: originalHeight * 0.025,
        right: originalWidth * 0.05);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: labelTextPadding,
          child: labelText(),
        ),

        //build source & destination text field
        Padding(
          padding: textFieldPadding,
          child: SourceDestinationTextField(),
        ),
        SizedBox(
          height: 15.0,
        ),

        //Build rectangle shape of box for displaying the bus list
        Expanded(
          child: Container(
              padding: EdgeInsets.only(top: originalHeight * 0.014),
              margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Color(0xffe1e2e1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.lightBlueAccent,
                        blurRadius: 1,
                        spreadRadius: 2.5)
                  ]),
              child: BusList(
                screenHeight: originalHeight,
                screenWidth: originalWidth,
              )),
        ),
        SizedBox(
          height: 05,
        )
      ],
    );
  }
}
