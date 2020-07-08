import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:local_bus_dhaka_route/models/location.dart';
import '../models/bus.dart';
import '../helpers/DBhelpers.dart';
import '../helpers/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';

class BusListProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool _isOpenFirstTime = false;
  bool _isReloaded = true;
  bool _hasInternet = true;
  List<Bus> _busList = [];

  List<Bus> _selectedBusList = [];

  bool get result{
    return _hasInternet;
  }
  bool get isLoading {
    return _isLoading;
  }


  int get selectedBusCount {
    return _selectedBusList.length;
  }

  int get allBusCount {
    return _busList.length;
  }

  List<Bus> get busList {
    return List.unmodifiable(_busList);
  }

  List<Bus> get selectedBusList {
    return List.unmodifiable(_selectedBusList);
  }

  void onTap({String source, String destination}) {
    searchBus(sourceName: source, destinationName: destination);
    notifyListeners();
  }

  void searchBus({String sourceName, String destinationName}) {
    List<Bus> tempList = [];
    for (Bus bus in _busList) {
      if (bus.stopageList.contains(sourceName) &&
          bus.stopageList.contains(destinationName)) {
        tempList.add(bus);
      }
    }
    _selectedBusList = tempList;
    notifyListeners();
  }

  //Data Fetching & Store related method

  void loadData() async {
    /*this method basically checking this app is open firstime.
  If open first time then loaded the all data from online & store on the Local database
  If not open first time then loaded the data from Local Database */

    //SharedPreferences used for keep the app open information
    final SharedPreferences pref = await SharedPreferences.getInstance();
    print('Pref : ' + pref.get('OpenFlag').toString());

    if (pref.getBool('OpenFlag') != null) {
      _isOpenFirstTime = pref.getBool('OpenFlag');
      _hasInternet = true;
      notifyListeners();
      if (_isReloaded) {
        //It used for avoiding recall the retriveDataFromLocalDB function
        retriveDataFromLocalDB();
        print('inside isReloaded');
        _isReloaded = false;
      }
    } else {
        _hasInternet = await DataConnectionChecker().hasConnection;
      if(_hasInternet == true) {
        pref.setBool('OpenFlag', true);
        await fetchDataFromFirebase(pref);
        insertDataIntoLocalDB();
        _isOpenFirstTime = true;
        _isReloaded = false;
        notifyListeners();
      }
      notifyListeners();
    }
  }

  Future fetchDataFromFirebase(SharedPreferences pre) async {
    //fetch data from firebase then insert into list;
    _isLoading = true;
    notifyListeners();
    String url = 'https://search-dhaka.firebaseio.com/buslist.json';
    http.Response response = await http.get(url).catchError((onError){
      pre.remove('OpenFlag');
      _isLoading = false;
      _hasInternet = false;
      notifyListeners();
      return;
    });
    Map<String, dynamic> fetchBusList = json.decode(response.body);
    if (fetchBusList == null) {
      _isLoading = false;
      notifyListeners();
    }
    fetchBusList.forEach((String key, dynamic fetchBus) {
      final Bus bus = Bus(
        id: key,
        name: fetchBus['name'].toString(),
        type: fetchBus['type'].toString(),
        sourceName: fetchBus['sourceName'].toString(),
        destinationName: fetchBus['destinationName'].toString(),
        stopageList: Helper.stringToList(fetchBus['stopageList'].toString()),
        sourceLocation: Location(
          placeName: fetchBus['sourceName'],
          latitude: double.parse(fetchBus['sourceLatitude'].toString()),
          longitude: double.parse(fetchBus['sourceLongitude'].toString()),
        ),
        destinationLocation: Location(
          placeName: fetchBus['destinationName'],
          latitude: double.parse(fetchBus['destinationLatitude'].toString()),
          longitude: double.parse(fetchBus['destinationLongitude'].toString()),
        ),
      );
      _busList.add(bus);
      print(bus.name);
    });
    _isLoading = false;
    notifyListeners();
    //print(fetchBusList);
  }

  void insertDataIntoLocalDB() {
    for (Bus bus in _busList) {
      DBhelpers.insertBus(tableName: 'bus_list', busData: {
        "id": bus.id,
        "name": bus.name,
        "type": bus.type,
        "stopageList": Helper.listToString(bus.stopageList),
        "sourceName": bus.sourceName,
        "destinationName": bus.destinationName,
        "sourceLatitude": bus.sourceLocation.latitude,
        "sourceLongitude": bus.sourceLocation.longitude,
        "destinationLatitude": bus.destinationLocation.latitude,
        "destinationLongitude": bus.destinationLocation.longitude
      });
    }
  }

  void retriveDataFromLocalDB() async {
    _isLoading = true;
    notifyListeners();
    List<Map<String, dynamic>> list =
        await DBhelpers.getData(tableName: 'bus_list');
    _busList = list.map((bus) {
      return Bus(
        id: bus['id'],
        name: bus['name'],
        type: bus['type'],
        stopageList: Helper.stringToListForLocalDB(bus['stopageList']),
        sourceName: bus['sourceName'],
        destinationName: bus['destinationName'],
        sourceLocation: Location(
            placeName: bus['sourceName'],
            latitude: bus['sourceLatitude'],
            longitude: bus['sourceLongitude']),
        destinationLocation: Location(
            placeName: bus['destinationName'],
            latitude: bus['sourceLatitude'],
            longitude: bus['destinationLongitude']),
      );
    }).toList();
    print('Retrive the data from local DB');
    _isLoading = false;
    notifyListeners();
  }

  Bus findById(String id) {
    return busList.firstWhere((bus) => bus.id == id);
  }
}
