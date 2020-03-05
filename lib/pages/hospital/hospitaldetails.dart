import 'package:flutter/material.dart';

class HospitalDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HospitalDetails();
  }
}

class _HospitalDetails extends State<HospitalDetails> {
  BoxDecoration _buildBackgroundDecoration() {
    return BoxDecoration(
      // backgroundBlendMode: BlendMode.dstATop,
      //color: Colors.deepOrange,
      gradient: LinearGradient(
          colors: [Colors.orange, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.5, 1]),
      image: DecorationImage(
          image: NetworkImage(
              "https://www.topfertilityclinics.com/wp-content/uploads/2016/10/Labaid-Hospital-Fertility-Center-Dhaka-Bangladesh.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.dstATop)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('hospital name')),
        ),
        body: Container(
          decoration: _buildBackgroundDecoration(),
        ));
  }
}
