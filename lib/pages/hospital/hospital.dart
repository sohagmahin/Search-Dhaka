import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widgets/Hospital/hospitalRoundbox.dart';

class Hospitals extends StatelessWidget {
  static const routeName = '/hospitals';
  List<HospitalModel> _hospitalList = [
    HospitalModel(
        hospitalName: "BSMMU(PG)",
        address: "Shahbagh Rd, Dhaka 1000",
        imageURL:
            "https://www.bsmmu.edu.bd/public/uploads/images/2c13540429197504d2aa65ff95fd13c5.jpg",
        iconURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTGDAN1EHLtmHB2fwyWFI3P93CWg0oEDGVWMaOBVSyq2MiRTuUl',
        path: 'Bangabandhu+Sheikh+Mujib+Medical+University+Hospital'),
    HospitalModel(
      hospitalName: "DHAKA MEDICAL COLLEGE",
      address: "53/1, Johnson Road, Dhaka-1100,",
      imageURL: "https://i.ytimg.com/vi/KpcgDeM8L3w/maxresdefault.jpg",
      iconURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSBHby6B7f2kRML2ycwilKzg9N6tElPav8trmnmey0LNS7zQXG_',
      path: 'Dhaka+Medical+College+Hospital',
    ),
    HospitalModel(
      hospitalName: "Sir Salimullah Medical College",
      address: "Mitford, Dhaka,",
      imageURL:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ySdpLB3xjS59FFlgpv_kEU21ScXxQt7QBHME2oqLo-goVr0C",
      iconURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQL8ErkRUsmJMVsVB95RRh8B2--Fw8vOts_eXSQuhMq7z9JBccn',
      path: 'Sir+Salimullah+Medical+College',
    ),
    HospitalModel(
      hospitalName: "Suhrawardy Medical College",
      address: "Sher-e-Bangla Nagor,Dhaka",
      imageURL:
          "https://www.shsmc.gov.bd/wp-content/uploads/2016/01/Screenshot_3-1.png",
      iconURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUrCK3THfa6n0Ez5HIYPmCWJWv09vrvIwuSwXpJQOitO_YW1pS&s',
      path: 'Shaheed+Suhrawardy+Medical+College+and+Hospital',
    ),
    HospitalModel(
      hospitalName: "Apollo/Evercare Hospitals",
      address: " Bashundhara Residential Area",
      imageURL:
          "https://1.bp.blogspot.com/-r2ryXgMxSgg/V4udAG0njKI/AAAAAAAAJJo/FLPJsABU4hEst0VbV5_K0sKXlUGgVzONACLcB/s1600/Apollo%2BHospitals%2BDhaka%2BLocation%2BAddress%2BPhone%2BNumber.JPG",
      iconURL:
          'https://s3-ap-southeast-1.amazonaws.com/practo-fabric/apollo-speciality-hospital-omr-chennai-1469277648-579365d07795a.png',
      path: 'Evercare+Hospital+Dhaka',
    ),
    HospitalModel(
      hospitalName: "SQUARE HOSPITALS LTD.",
      address: "West Panthapath,Dhaka 1205 ",
      imageURL: "https://uralems.com/wp-content/uploads/2018/05/square-1.png",
      iconURL:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR8tPxzlX5zVde469zbCGLEC8ZgMewh_Zi6mojPkL8xbwQd_X2_',
      path: 'Square+Hospitals+Ltd.',
    ),
    HospitalModel(
      hospitalName: "Labaid Specialized Hospital",
      address: "Road No 4,Dhanmondi,Dhaka 1205",
      imageURL:
          "https://4.bp.blogspot.com/-SvF9FdhfUeM/WhPuvm83mrI/AAAAAAAAAAg/_DP0CPjEDG8up0kmIFJb8F0Zd0BK1I2SwCLcBGAs/s1600/01.jpg",
      iconURL:
          'https://www.jagojobs.com/media/company_logos/2017July/Labaid_Hospital_logo_20170704114847_2365.png',
      path: 'LABAID+Specialized+Hospital',
    ),
    HospitalModel(
      hospitalName: "Green Life Hospital",
      address: " Green Rd,Dhaka",
      imageURL:
          "https://gmfadmission.in/wp-content/uploads/2018/03/green-life-hospital.jpg",
      iconURL: 'https://www.moumaachi.com/upload/company/251bdb2df3.jpg',
      path: 'Green+Life+Medical+College+And+Hospital',
    ),
    HospitalModel(
      hospitalName: "Ibn Sina Hospital",
      address: "Dhanmondi ,Dhaka",
      imageURL:
          "https://hospital.bangladeshinformation.info/wp-content/uploads/sites/6/2016/08/Ibn-Sina-Hospital.jpg",
      iconURL:
          'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/feature/images/ibn-sina.jpg?itok=YKa5QIqV',
      path: 'Ibn+Sina+Hospital',
    ),
    HospitalModel(
      hospitalName: "Popular Hospital",
      address: "Dhanmondi, Dhaka-1205",
      imageURL:
          "http://cdn.yourarticlelibrary.com/wp-content/uploads/2014/04/Popular_Pharmaceuticals_Limited_Side_View_1.jpg",
      iconURL:
          'https://hirebangladeshi.com/uploads/company/logo/4bf8b729-dfb1-4765-a9f1-4dfa86ee4c73/p.png',
      path: 'Popular+Hospital',
    ),
    HospitalModel(
      hospitalName: "Bangladesh Eye Hospital",
      address: "Satmasjid Road,Dhanmondi, Dhaka",
      imageURL: "https://i.ytimg.com/vi/wGj7s_qmNf4/maxresdefault.jpg",
      iconURL:
          'https://bdbusinessfinder.com/wp-content/uploads/2019/04/eyeR4-780x270.jpg',
      path: 'Bangladesh+Eye+Hospital,+House-+78,+Satmasjid+Road,+Dhaka+1205',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital List'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: _hospitalList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 05),
                child: InkWell(
                  onTap: () {
                    _showPopup(context, _hospitalList[index].hospitalName,
                        _hospitalList[index].address);
                  },
                  child: RoundedBox(
                    name: _hospitalList[index].hospitalName,
                    location: _hospitalList[index].address,
                    imageURL: _hospitalList[index].imageURL,
                    iconURL: _hospitalList[index].iconURL,
                    callback: (){
                      _launchMapView(path: _hospitalList[index].path);
                    },
                    callbackTwo: (){
                      _launchDirMapView(path: _hospitalList[index].path);
                    },
                  ),
                ),
              );
            }),
      ),
    );
  }
  void _launchMapView({String path}) async {
    String url = 'https://www.google.com/maps/search/$path/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  void _launchDirMapView({String path}) async {
    String url = 'https://www.google.com/maps/dir//$path/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }
}

Future<bool> _showPopup(BuildContext context, title, subtitle) {
  return showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      contentPadding: EdgeInsets.only(left: 20),
      title: Text(
        title,
        style: TextStyle(fontSize: 22),
        overflow: TextOverflow.fade,
      ),
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Icon(Icons.location_on),
            Text(
              subtitle,
              style: TextStyle(fontSize: 17),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

class HospitalModel {
  final String hospitalName;
  final String address;
  final String imageURL;
  final String iconURL;
  final String path;

  HospitalModel(
      {this.hospitalName,
      this.address,
      this.imageURL,
      this.iconURL,
      this.path});
}
