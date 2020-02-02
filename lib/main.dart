import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './provider/bus_list_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ChangeNotifierProvider<BusListProvider>(
      create: (context) => BusListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Local Bus',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomePage(title: 'Local Bus(Dhaka route)'),
      ),
    );
  }
}
