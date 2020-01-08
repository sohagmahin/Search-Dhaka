import 'package:flutter/material.dart';
import '../widget/bus_tile.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<String> added = [];
  String currentText = "";
  var textEditingControllerSource = TextEditingController();
  var textEditingControllerDestination = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> sourcekey = new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<String>> destinationkey =
  new GlobalKey();

  List<String> suggestions = [
    "Apple",
    "Armidillo",
    "Actual",
    "Actuary",
    "America",
    "Argentina",
    "Australia",
    "Antarctica",
    "Blueberry",
    "Cheese",
    "Danish",
    "Eclair",
    "Fudge",
    "Granola",
    "Hazelnut",
    "Ice Cream",
    "Jely",
    "Kiwi Fruit",
    "Lamb",
    "Macadamia",
    "Nachos",
    "Oatmeal",
    "Palm Oil",
    "Quail",
    "Rabbit",
    "Salad",
    "T-Bone Steak",
    "Urid Dal",
    "Vanilla",
    "Waffles",
    "Yam",
    "Zest"
  ];

  final double labelTextFontSizePortrait = 20;
  final double labelTextFontSizeLandscape = 15;
  final double textFieldContainerHeightPortrait = 50.0;
  final double textFieldContainerHeightLandscape = 32.0;
  final double textFieldSizedBoxHeightPortrait = 10.0;
  final double textFieldSizedBoxHeightLandscape = 5.0;
  final double beforeBusListSizedBoxHeightPortrait = 15.0;
  final double beforeBusListSizedBoxHeightLandscape = 6.0;
  final double busTileContainerHeightPortrait = 60.0;
  final double busTileContainerHeightLandscape = 55.0;

  Widget sourceTextField() {
    return SimpleAutoCompleteTextField(
      key: sourcekey,
      controller: textEditingControllerSource,
      suggestions: suggestions,
      textChanged: (text) => currentText = text,
      clearOnSubmit: false,
      textSubmitted: (text) => setState(() {
        if (text != "") {
          textEditingControllerSource.text = text;
          _onSubmittedForm();
          print(text);
        }
      }),
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
    );
  }

  Widget destinationTextField() {
    return SimpleAutoCompleteTextField(
      key: destinationkey,
      controller: textEditingControllerDestination,
      suggestions: suggestions,
      textChanged: (text) => currentText = text,
      clearOnSubmit: false,
      textSubmitted: (text) => setState(() {
        if (text != "") {
          textEditingControllerDestination.text = text;
          _onSubmittedForm();
          print(text);
        }
      }),
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
    );
  }

  void _onSubmittedForm() {
    if (textEditingControllerSource.text != "" &&
        textEditingControllerDestination.text != "") {
      print('TextField is not empty');
    } else {
      print('TextField is empty!');
    }
  }

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
                    ? textFieldContainerHeightPortrait
                    : textFieldContainerHeightLandscape,
                child: sourceTextField(),
              ),
              SizedBox(
                height: isPortrait
                    ? textFieldSizedBoxHeightPortrait
                    : textFieldSizedBoxHeightLandscape,
              ),
              //Destination Container
              Container(
                height: isPortrait
                    ? textFieldContainerHeightPortrait
                    : textFieldContainerHeightLandscape,
                child: destinationTextField(),
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
                    padding: isPortrait
                        ? busTileCardPaddingPortrait
                        : busTileCardPaddingLandscape,
                    child: Container(
                      height: isPortrait
                          ? busTileContainerHeightPortrait
                          : busTileContainerHeightLandscape,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
