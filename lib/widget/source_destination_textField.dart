import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';

class SourceDestinationTextField extends StatefulWidget {
  @override
  _SourceDestinationTextFieldState createState() =>
      _SourceDestinationTextFieldState();
}

class _SourceDestinationTextFieldState
    extends State<SourceDestinationTextField> {
  String currentText = "";

  var textEditingControllerSource = TextEditingController();
  var textEditingControllerDestination = TextEditingController();

  GlobalKey<AutoCompleteTextFieldState<String>> sourceKey = new GlobalKey();

  GlobalKey<AutoCompleteTextFieldState<String>> destinationKey =
      new GlobalKey();

  final double textFieldContainerHeight = 50.0;
  final double textFieldSizedBoxHeight = 10.0;

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

  Widget sourceTextField() {
    return SimpleAutoCompleteTextField(
      key: sourceKey,
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
      style:
          TextStyle(backgroundColor: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget destinationTextField() {
    return SimpleAutoCompleteTextField(
      key: destinationKey,
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
      style:
          TextStyle(backgroundColor: Colors.white, fontWeight: FontWeight.bold),
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
    return Column(
      children: <Widget>[
        //source container
        Container(
          height: textFieldContainerHeight,
          child: sourceTextField(),
        ),
        SizedBox(
          height: textFieldSizedBoxHeight,
        ),
        //Destination Container
        Container(
          height: textFieldContainerHeight,
          child: destinationTextField(),
        ),
      ],
    );
  }
}
