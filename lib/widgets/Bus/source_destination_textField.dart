import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:provider/provider.dart';
import '../../provider/bus_list_provider.dart';
import '../../util/constant.dart';

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

  InputBorder _buildEnabledBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black87, width: 2),
    );
  }

  Widget sourceTextField() {
    return SimpleAutoCompleteTextField(
      key: sourceKey,
      controller: textEditingControllerSource,
      suggestions: KConstant.suggestions,
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
        enabledBorder: _buildEnabledBorder(),
        prefixIcon: Icon(Icons.gps_fixed),
        labelText: 'Source',
        filled: true,
        fillColor: Colors.white,
      ),
      style:
          TextStyle(backgroundColor: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget destinationTextField() {
    return SimpleAutoCompleteTextField(
      key: destinationKey,
      controller: textEditingControllerDestination,
      suggestions: KConstant.suggestions,
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
          enabledBorder: _buildEnabledBorder(),
          prefixIcon: Icon(Icons.location_on),
          // border: _buildBorder(),
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
      Provider.of<BusListProvider>(context, listen: false).onTap(
          source: textEditingControllerSource.text,
          destination: textEditingControllerDestination.text);
      print('TextField is not empty');
    } else {
      print('TextField is empty!');
      return;
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
