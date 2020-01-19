import 'package:flutter/material.dart';
import 'input_page.dart';
import 'bus_list.dart';
import '../widget/home_page_drawer.dart';

const kButtomTextStyle = TextStyle(fontWeight: FontWeight.bold);

class HomePage extends StatefulWidget {
  final String title;
  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Bus Dhaka route'),
        centerTitle: true,
      ),
      drawer: HomePageDrawer(),
      backgroundColor: Colors.indigo, //  Color(0xff3f51b5)
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: selected,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (select) {
          setState(() {
            selected = select;
          });
        },
      ),
      body: selected == 0 ? InputPage() : BusList(),
    );
  }
}
