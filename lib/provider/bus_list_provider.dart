import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../models/bus.dart';

class BusListProvider extends ChangeNotifier {
  List<Bus> _busList = [
    Bus(
      name: '7 No Bus',
      type: 'Local',
      stopageList: [
        'Gabtoli',
        'Technical',
        'Kallyanpur',
        'Shamoli',
        'CollageGate',
        'Farmget',
        'Zatrabari'
      ],
      sourceName: 'Gabtoli',
      destinationName: 'Zatrabari',
      sourceLocation: null,
      destinationLocation: null,
    ),
    Bus(
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
        'Zatrabari'
      ],
      sourceName: 'Dhamrai',
      destinationName: 'Zatrabari',
      sourceLocation: null,
      destinationLocation: null,
    ),
    Bus(
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
        'Shabag'
      ],
      sourceName: 'Mirpur 1',
      destinationName: 'Shabag',
      sourceLocation: null,
      destinationLocation: null,
    ),
    Bus(
      name: 'Projapoti',
      type: 'Siting',
      stopageList: [
        'Mohammadpur',
        'Shamoli',
        'Agergou',
        'Mirpur 10',
        'Uttara',
      ],
      sourceName: 'Mohammadpur',
      destinationName: 'Uttara',
      sourceLocation: null,
      destinationLocation: null,
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
      if (bus.stopageList.contains(sourceName) &&
          bus.stopageList.contains(destinationName)) {
        tempList.add(bus);
      }
    }
    _selectedBusList = tempList;
    notifyListeners();
  }
}
