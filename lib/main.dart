import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './provider/bus_list_provider.dart';
import 'package:local_bus_dhaka_route/pages/bus_details.dart';
import './pages/conscious_info_page.dart';
import './pages/places.dart';
import './pages/place_details.dart';

void main() {
  runApp(LocalBus());
}

class LocalBus extends StatelessWidget {
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
          fontFamily: 'ZCOOLQingKeHuangYou'
        ),
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName: (context) =>
              HomePage(title: 'Local Bus(Dhaka route)'),
          BusDetails.routeName: (context) => BusDetails(),
          ConsciousInfoPage.routeName: (context) => ConsciousInfoPage(),
          Places.routeName: (context) => Places(),
          PlaceDetails.routeName: (context) => PlaceDetails(),
        },
      ),
    );
  }
}
