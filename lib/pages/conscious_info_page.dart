import 'package:flutter/material.dart';
import '../util/constant.dart';

class ConsciousInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'সচেতনতা',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: KConstant.contentList.length,
          itemBuilder: (context, index) => CustomCard(
            color: KConstant.contentList[index].color,
            title: KConstant.contentList[index].title,
            content: KConstant.contentList[index].content,
          ),
        ));
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String content;
  final Color color;

  CustomCard({this.title, this.content, this.color});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Card(
      color: color,
      elevation: 10,
      margin: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05, vertical: screenWidth * 0.01),
      child: Container(
        padding: EdgeInsets.only(
          left: screenWidth * 0.05,
          right: screenWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: screenHeight*0.02,),
            Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(
              height: screenWidth*0.02,
            ),
            Text(content),
            SizedBox(height: screenHeight* 0.02,)
          ],
        ),
      ),
    );
  }
}
