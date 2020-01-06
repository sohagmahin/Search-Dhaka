import 'package:flutter/material.dart';
import 'input_page.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f51b5),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 22.0,
        backgroundColor: Color(0xff3f51b5) ,
        items: [
          BottomNavigationBarItem(title: Text('Home'),icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('All Bus'),icon: Icon(Icons.format_line_spacing))
        ],
        onTap: (select) {},
      ),
      body: InputPage(),
    );
  }
}
