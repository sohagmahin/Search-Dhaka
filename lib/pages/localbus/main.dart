import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/pages/localbus/conscious_info_page.dart';
import 'input_page.dart';
import 'all_bus_list.dart';

const kButtomTextStyle = TextStyle(fontWeight: FontWeight.bold);

enum FilterStatus { findNearestStop, consciousPage }
enum PageStatus { inputPage, allBusPage }

class LocalBusMain extends StatefulWidget {
  static const routeName = '/MainBusPage';
  final String title;

  LocalBusMain({this.title});

  @override
  _LocalBusMainState createState() => _LocalBusMainState();
}

class _LocalBusMainState extends State<LocalBusMain> {
  PageStatus selectedPage = PageStatus.inputPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Bus Dhaka route'),
        centerTitle: true,
        actions: <Widget>[_buildPopupMenuButton(context)],
      ),
      backgroundColor: Colors.indigo, //  Color(0xff3f51b5)
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: selectedPage == PageStatus.inputPage ? InputPage() : AllBusList(),
    );
  }

  PopupMenuButton<FilterStatus> _buildPopupMenuButton(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      onSelected: (status) {
        if (status == FilterStatus.findNearestStop) {
          showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                    content: Text('This feature will coming soon!'),
                  ));
        }
        if (status == FilterStatus.consciousPage) {
          Navigator.of(context).pushNamed(ConsciousInfoPage.routeName);
        }
      },
      itemBuilder: (_) {
        return [
          PopupMenuItem(
            child: Text('Find Nearest Stop'),
            value: FilterStatus.findNearestStop,
          ),
          PopupMenuItem(
            child: Text('Conscious'),
            value: FilterStatus.consciousPage,
          ),
        ];
      },
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      iconSize: 22.0,
      backgroundColor: Colors.indigo,
      items: [
        BottomNavigationBarItem(
            title: Text(
              'Home',
              style: kButtomTextStyle,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
            )),
        BottomNavigationBarItem(
            title: Text(
              'All Bus',
              style: kButtomTextStyle,
            ),
            icon: Icon(
              Icons.format_line_spacing,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.format_line_spacing,
              color: Colors.white,
            ))
      ],
      currentIndex: selectedPage.index,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: (value) {
        setState(() {
          selectedPage =
              value == 0 ? PageStatus.inputPage : PageStatus.allBusPage;
        });
      },
    );
  }
}
