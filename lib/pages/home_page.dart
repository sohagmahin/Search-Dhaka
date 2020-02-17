import 'dart:io';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'all_bus_list.dart';
import '../widget/home_page_drawer.dart';

const kButtomTextStyle = TextStyle(fontWeight: FontWeight.bold);

enum FilterStatus { findNearestStop }
enum PageStatus { inputPage, allBusPage }

class HomePage extends StatefulWidget {
  static const routeName = '/';
  final String title;

  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageStatus selectedPage = PageStatus.inputPage;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exitDialog(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Local Bus Dhaka route'),
          centerTitle: true,
          actions: <Widget>[_buildPopupMenuButton(context)],
        ),
        drawer: HomePageDrawer(),
        backgroundColor: Colors.indigo, //  Color(0xff3f51b5)
        bottomNavigationBar: _buildBottomNavigationBar(),
        body: selectedPage == PageStatus.inputPage ? InputPage() : AllBusList(),
      ),
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
      },
      itemBuilder: (_) {
        return [
          PopupMenuItem(
            child: Text('Find Nearest Stop'),
            value: FilterStatus.findNearestStop,
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

  Future<bool> exitDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Do you want to exit'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () => exit(0),
          ),
        ],
      ),
    );
  }
}
