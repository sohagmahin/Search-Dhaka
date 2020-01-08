import 'dart:collection';

import 'bus.dart';

class BusList {
  List<Bus> busList = [
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
      source: null,
      destination: null,
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
        'Farmget',
        'Zatrabari'
      ],
      source: null,
      destination: null,
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
      source: null,
      destination: null,
    ),
    Bus(
      name: 'Projapoti',
      type: 'Siting',
      stopageList: ['Mohammadpur', 'Shamoli', 'Agergou', 'Mirpur 10', 'Uttara'],
      source: null,
      destination: null,
    ),
  ];

  UnmodifiableListView<Bus> get allBus {
    return busList;
  }


  List<Bus> searchBus({String sourceName, String destinationName}) {
    List<Bus> tempList = [];
    for (Bus bus in busList) {
      if (bus.stopageList.contains(sourceName) &&
          bus.stopageList.contains(destinationName)) {
        tempList.add(bus);
      }
    }
    return tempList;
  }
}
