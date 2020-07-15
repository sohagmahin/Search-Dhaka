import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:local_bus_dhaka_route/models/place.dart';
import 'package:local_bus_dhaka_route/provider/place_provider.dart';
import 'package:provider/provider.dart';

const Kgradient = LinearGradient(
  colors: [Colors.indigoAccent, Colors.lightGreen],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.2, 1],
);

const titleTextStyle =
    TextStyle(fontSize: 20, decoration: TextDecoration.underline);

const bodyTextStyle = TextStyle(fontSize: 18);

class PlaceDetails extends StatefulWidget {
  static const routeName = '/placeDetails';

  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  int _current = 0;
  List<String> imgList = [];

  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context).settings.arguments;
    List<Place> placeList =
        Provider.of<PlaceProvider>(context, listen: true).places;
    Place place = placeList[index];
    imgList = place.imageList;

    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        centerTitle: true,
      ),
      body: Container(
        decoration: _buildBackgroundDecoration(place.featureImageUrl),
        child: Column(
          children: [
            imgList != null ? _buildCarouselSlider() : Container(),
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20.0),
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Text(
                    place.description,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            _buildModalTriggerButton(place.visitingTime),
          ],
        ),
      ),
    );
  }

  InkWell _buildModalTriggerButton(Map vTime) {
    return InkWell(
      onTap: () {
        _buildModalBottomSheet(vTime);
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0, -1))
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
//          gradient: Kgradient,
//          color: Color(0xffE1E2E1),
        color: Colors.indigoAccent,
        ),
        width: double.infinity,
        child: Center(
            child: Text(
          "Visiting Time".toUpperCase(),
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  void _buildModalBottomSheet(Map vtime) {
    Widget content = Column(
      children: <Widget>[
        Container(
          height: 300,
          width: 350,
          padding: const EdgeInsets.only(top: 15),
          child: Card(
            color: Colors.transparent,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      vtime['summerH'],
                      style: titleTextStyle,
                    ),
                    Text(
                      vtime['summerB'],
                      style: bodyTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      vtime['winterH'],
                      style: titleTextStyle,
                    ),
                    Text(
                      vtime['winterB'],
                      style: bodyTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
//                            'Entry Fees',
                      vtime['entryFeeH'],
                      style: titleTextStyle,
                    ),
                    Text(
                      vtime['entryFeeB'],
                      style: bodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          vtime['closingTime'],
          style:
              TextStyle(fontSize: vtime['closingTime'].length < 32 ? 30 : 20,color: Colors.redAccent),
        ),
      ],
    );

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 360,
            color: Color(0xff471c06),
            child: Container(
              decoration: BoxDecoration(
//                gradient: Kgradient,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: content,
            ),
          );
        });
  }

  List<Widget> child() {
    return map<Widget>(
      imgList,
      (index, i) {
        return Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(children: <Widget>[
//              Image.network(i, fit: BoxFit.cover, width: 1000.0),
            CachedNetworkImage(imageUrl: i,fit: BoxFit.cover,width: 1000.0,),
            ]),
          ),
        );
      },
    ).toList();
  }

  Column _buildCarouselSlider() {
    return Column(
      children: [
        CarouselSlider(
          items: child(),
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 2.0,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(
            imgList,
            (index, url) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4)),
              );
            },
          ),
        ),
      ],
    );
  }

  BoxDecoration _buildBackgroundDecoration(String imgUrl) {
    return BoxDecoration(
      color: Colors.black,
      image: DecorationImage(
          image: CachedNetworkImageProvider(imgUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.dstATop)),
    );
  }
}

//Outside the class
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}
