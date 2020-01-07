import 'package:flutter/material.dart';
import 'bus_details.dart';
import '../widget/bus_tile.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final double originalHeight = MediaQuery.of(context).size.height;
    final double originalWidth = MediaQuery.of(context).size.width;

    var labelTextPaddingPortraitMode =
        EdgeInsets.only(top: originalHeight * 0.01, left: originalWidth * 0.02);
    var labelTextPaddingLandscapeMode =
        EdgeInsets.only(top: originalHeight * 0.01, left: originalWidth * 0.10);
    var textFieldPaddingPortraitMode = EdgeInsets.only(
        left: originalWidth * 0.02,
        top: originalHeight * 0.025,
        right: originalWidth * 0.10);
    var textFieldPaddingLandscapeMode = EdgeInsets.only(
        left: originalWidth * 0.10,
        top: originalHeight * 0.02,
        right: originalWidth * 0.15);

    var busTileCardPaddingPortrait = EdgeInsets.only(
        left: originalWidth * 0.03,
        right: originalWidth * 0.03,
        top: originalHeight * 0.001,
        bottom: originalHeight * 0.01);
    var busTileCardPaddingLandscape = EdgeInsets.only(
        left: originalWidth * 0.05,
        right: originalWidth * 0.05,
        top: originalHeight * 0.001,
        bottom: originalHeight * 0.01);

    double labelTextFontSizePortrait = 20;
    double labelTextFontSizeLandscape = 15;
    double textFeildContainerHeightPortrait = 50.0;
    double textFeildContainerHeightLandscape = 32.0;
    double textFeildSizedBoxHeightPortrait = 10.0;
    double textFeildSizedBoxHeightLandscape = 5.0;
    double beforeBusListSizedBoxHeightPortrait = 15.0;
    double beforeBusListSizedBoxHeightLandscape = 6.0;
    double busTileContainerHeightPortrait = 60.0;
    double busTileContainerHeightLandscape = 55.0;

    print(isPortrait);
    print(originalHeight);
    print(originalWidth);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: isPortrait
              ? labelTextPaddingPortraitMode
              : labelTextPaddingLandscapeMode,
          child: Text(
            'Choose your bus station',
            style: TextStyle(
              fontSize: isPortrait
                  ? labelTextFontSizePortrait
                  : labelTextFontSizeLandscape,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),

        //build source & destination text field
        Padding(
          padding: isPortrait
              ? textFieldPaddingPortraitMode
              : textFieldPaddingLandscapeMode,
          child: Column(
            children: <Widget>[
              //source container
              Container(
                height: isPortrait
                    ? textFeildContainerHeightPortrait
                    : textFeildContainerHeightLandscape,
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
                height: isPortrait
                    ? textFeildSizedBoxHeightPortrait
                    : textFeildSizedBoxHeightLandscape,
              ),
              //Destination Container
              Container(
                height: isPortrait
                    ? textFeildContainerHeightPortrait
                    : textFeildContainerHeightLandscape,
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
          height: isPortrait
              ? beforeBusListSizedBoxHeightPortrait
              : beforeBusListSizedBoxHeightLandscape,
        ),

        //Build rectangle shape of box for displaying the bus list
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: originalHeight * 0.014),
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
                    padding: busTileCardPaddingLandscape,
                    child: Container(
                      height: isPortrait
                          ? busTileContainerHeightPortrait
                          : busTileContainerHeightLandscape,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: BusTile(
                        name: '7 No Bus',
                        type: 'Local',
                        source: 'Gabtoli',
                        destination: 'Zatrabari',
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
