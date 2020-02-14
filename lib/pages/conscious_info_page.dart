import 'package:flutter/material.dart';
import '../util/constant.dart';
import '../widget/custom_card.dart';

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
      ),
    );
  }
}
