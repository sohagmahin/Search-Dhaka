import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

const Kgradient = LinearGradient(
  colors: [Colors.deepOrange, Colors.yellowAccent],
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

  static const List<String> imgList = [
    'https://nijhoom.b-cdn.net/wp-content/uploads/2018/08/lalbagh-fort-tomb-pari-bibi-600-o.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Lalbagh_Fort_Mosque-A-History-Teller.jpg/220px-Lalbagh_Fort_Mosque-A-History-Teller.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/a/a1/Lalbagh_Kella_%28Lalbagh_Fort%29_Dhaka_Bangladesh_2011_17.JPG',
    'https://nijhoom.b-cdn.net/wp-content/uploads/2018/08/lalbagh-fort-mosque-600-o.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lalbag Fort'),
        centerTitle: true,
      ),
      body: Container(
        decoration: _buildBackgroundDecoration(),
        child: Column(
          children: [
            _buildCarouselSlider(),
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            _buildModalTriggerButton(),
          ],
        ),
      ),
    );
  }

  InkWell _buildModalTriggerButton() {
    return InkWell(
      onTap: () {
        _buildModalBottomSheet();
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          gradient: Kgradient,
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

  void _buildModalBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 360,
            color: Color(0xff471c06),
            child: Container(
              decoration: BoxDecoration(
                gradient: Kgradient,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 350,
                    padding: const EdgeInsets.only(top: 15),
                    child: Card(
                      color: Colors.yellowAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "April to September (Summer)",
                            style: titleTextStyle,
                          ),
                          Text(
                            "Tuesday to Saturday: 10:00 am - 6:00 pm\nMonday: 2:00 pm - 6:00 pm",
                            style: bodyTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "October to March (Winter)",
                            style: titleTextStyle,
                          ),
                          Text(
                            "Tuesday to Saturday: 9:00 am - 5:00 pm\nMonday: 1:30 pm - 5:00 pm",
                            style: bodyTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Entry Fees',
                            style: titleTextStyle,
                          ),
                          Text(
                            'Bangladeshi Citizens: ৳ 20.00\nCitizens of SAARC Countries: ৳ 100.00\n'
                            'Other Foreign Citizens: ৳ 200.00\n'
                            'Students(till secondary school): ৳ 5.00',
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Sunday: Closed",style: TextStyle(fontSize: 30),),
                ],
              ),
            ),
          );
        });
  }

  Column _buildCarouselSlider() {
    return Column(
      children: [
        CarouselSlider(
          items: child,
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

  final List child = map<Widget>(
    imgList,
    (index, i) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(children: <Widget>[
            Image.network(i, fit: BoxFit.cover, width: 1000.0),
          ]),
        ),
      );
    },
  ).toList();

  BoxDecoration _buildBackgroundDecoration() {
    return BoxDecoration(
      // backgroundBlendMode: BlendMode.dstATop,
      //color: Colors.deepOrange,

      gradient: LinearGradient(
          colors: [Colors.deepOrange, Colors.yellowAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.5, 1]),
      image: DecorationImage(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2017/08/30/22/33/fort-aurangabad-2698844_960_720.jpg'),
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

const String description = "The Mughal prince Muhammad Azam, "
    "third son of Aurangzeb started the work of the fort in 1678 during his vice-royalty in Bengal. He stayed in Bengal for 15 months. "
    "The fort remained incomplete when he was called away by his father Aurangzeb."
    "Shaista Khan was the new subahdar of Dhaka in that time, and he did not complete the fort."
    "In 1684, the daughter of Shaista Khan named Iran Dukht Pari Bibi died there. After her death,"
    "he started to think the fort as unlucky, and left the structure incomplete."
    "[2] Among the three major parts of Lalbagh Fort, one is the tomb of Bibi Pari.After Shaista Khan left Dhaka, it lost its popularity."
    "The main cause was that the capital was moved from Dhaka to Murshidabad. After the end of the royal Mughal period, the fort became abandoned."
    "In 1844, the area acquired its name as Lalbagh replacing Aurangabad, and the fort became Lalbagh Fort.[3]\nCredit : Wikipedia";
