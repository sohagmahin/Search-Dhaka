import 'package:flutter/cupertino.dart';
import 'package:local_bus_dhaka_route/models/location.dart';
import '../models/bus.dart';
import '../helpers/DBhelpers.dart';
import '../helpers/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BusListProvider extends ChangeNotifier {
  bool _isOpenFirstTime = false;
  bool _isReloaded = true;
  List<Bus> _busList = [];

  List<Bus> tempList = [
    Bus(
      id: '01',
      name: '7 No Bus',
      type: 'Local',
      stopageList: [
        'Gabtoli',
        'Technical',
        'Kallyanpur',
        'Shamoli',
        'CollageGate',
        'Farmget',
        'Jatrabari'
      ],
      sourceName: 'Gabtoli',
      destinationName: 'Jatrabari',
      sourceLocation: Location(
          placeName: 'Gabtoli', latitude: 23.7828969, longitude: 90.3427352),
      destinationLocation: Location(
          placeName: 'Jatrabari', latitude: 23.7097517, longitude: 90.4344978),
    ),
    Bus(
      id: '02',
      name: 'Thekana',
      type: 'Siting',
      stopageList: [
        'Dhamrai',
        'Savar',
        'Gabtoli',
        'Technical',
        'Kallyanpur',
        'Shamoli',
        'CollageGate',
        'Jatrabari'
      ],
      sourceName: 'Dhamrai',
      destinationName: 'Jatrabari',
      sourceLocation: Location(
          placeName: 'Dhamrai', latitude: 23.9162572, longitude: 90.2096656),
      destinationLocation: Location(
          placeName: 'Jatrabari', latitude: 23.7097517, longitude: 90.4344978),
    ),
    Bus(
      id: '03',
      name: 'Bahon',
      type: 'Siting',
      stopageList: [
        'Mirpur 1',
        'Technical',
        'Kallyanpur',
        'Shamoli',
        'CollageGate',
        'Dhanmondi 27',
        'Dhanmoni 32',
        'Shabag',
        'Sadarghat'
      ],
      sourceName: 'Mirpur 1',
      destinationName: 'Sadarghat',
      sourceLocation: Location(
          placeName: 'Mirpur 1', latitude: 23.7963066, longitude: 90.3510103),
      destinationLocation: Location(
          placeName: 'Sadarghat', latitude: 23.7093772, longitude: 90.4095903),
    ),
    Bus(
      id: '04',
      name: 'Projapoti',
      type: 'Siting',
      stopageList: [
        'Mohammadpur',
        'Shamoli',
        'Agergou',
        'Mirpur 10',
        'Uttara',
        'Abdullahpur'
      ],
      sourceName: 'Mohammadpur',
      destinationName: 'Abdullahpur',
      sourceLocation: Location(
          placeName: 'Mohammadpur',
          latitude: 23.6820265,
          longitude: 89.1747168),
      destinationLocation: Location(
          placeName: 'Abdullahpur',
          latitude: 23.8698014,
          longitude: 90.3965403),
    ),
  ];

  List<Bus> _selectedBusList = [];

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
      print(!bus.stopageList.contains(sourceName));
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
    print('Pref : ' + pref.get('isStore').toString());

    if (pref.getBool('OpenFlag') != null) {
      _isOpenFirstTime = pref.getBool('OpenFlag');

      if (_isReloaded) {
        //Is used for avoiding recall the retriveDataFromLocalDB function
        retriveDataFromLocalDB();
        print('inside isReloaded');
        _isReloaded = false;
      }
    } else {
      pref.setBool('OpenFlag', true);
      // fetchDataFromFirebase();
      insertDataIntoLocalDB();
      retriveDataFromLocalDB();
      _isOpenFirstTime = true;
      notifyListeners();
    }
  }

  void fetchDataFromFirebase() {
    //fetch data from firebase then insert into list;
    return;
  }

  void insertDataIntoLocalDB() {
    for (Bus bus in tempList) {
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
    List<Map<String, dynamic>> list =
        await DBhelpers.getData(tableName: 'bus_list');

    _busList = list.map((bus) {
      return Bus(
        id: bus['id'],
        name: bus['name'],
        type: bus['type'],
        stopageList: Helper.stringToList(bus['stopageList']),
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
  }
}
