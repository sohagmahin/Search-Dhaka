import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/Hospital/hospitalRoundbox.dart';

class Hospitals extends StatelessWidget {
  static const routeName = '/hospitals';
  List<HospitalModel> _hospitalsilt = [
    HospitalModel(
      hospitalname: "BSMMU(PG)",
      hostpitallocation: "Shahbagh Rd, Dhaka 1000",
      picture:
          "https://upload.wikimedia.org/wikipedia/en/6/67/Shahbag_BSMMU_Hospital_3.jpg",
      icon:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTGDAN1EHLtmHB2fwyWFI3P93CWg0oEDGVWMaOBVSyq2MiRTuUl',
    ),
    HospitalModel(
      hospitalname: "DHAKA MEDICAL COLLEGE",
      hostpitallocation: "53/1, Johnson Road, Dhaka-1100,",
      picture: "https://i.ytimg.com/vi/KpcgDeM8L3w/maxresdefault.jpg",
      icon:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSBHby6B7f2kRML2ycwilKzg9N6tElPav8trmnmey0LNS7zQXG_',
    ),
    HospitalModel(
      hospitalname: "Sir Salimullah Medical College",
      hostpitallocation: "Mitford, Dhaka,",
      picture:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ySdpLB3xjS59FFlgpv_kEU21ScXxQt7QBHME2oqLo-goVr0C",
      icon:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQL8ErkRUsmJMVsVB95RRh8B2--Fw8vOts_eXSQuhMq7z9JBccn',
    ),
    HospitalModel(
      hospitalname: " Suhrawardy Medical College",
      hostpitallocation: "Sher-e-Bangla Nagor,Dhaka",
      picture:
          "https://www.shsmc.gov.bd/wp-content/uploads/2016/01/Screenshot_3-1.png",
      icon:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUrCK3THfa6n0Ez5HIYPmCWJWv09vrvIwuSwXpJQOitO_YW1pS&s',
    ),
    HospitalModel(
      hospitalname: "Apollo Hospitals",
      hostpitallocation: " Bashundhara Residential Area",
      picture:
          "https://1.bp.blogspot.com/-r2ryXgMxSgg/V4udAG0njKI/AAAAAAAAJJo/FLPJsABU4hEst0VbV5_K0sKXlUGgVzONACLcB/s1600/Apollo%2BHospitals%2BDhaka%2BLocation%2BAddress%2BPhone%2BNumber.JPG",
      icon:
          'https://s3-ap-southeast-1.amazonaws.com/practo-fabric/apollo-speciality-hospital-omr-chennai-1469277648-579365d07795a.png',
    ),
    HospitalModel(
      hospitalname: "SQUARE HOSPITALS LTD.",
      hostpitallocation: "West Panthapath,Dhaka 1205 ",
      picture:
          "https://uralems.com/wp-content/uploads/2018/05/square-1.png",
      icon:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR8tPxzlX5zVde469zbCGLEC8ZgMewh_Zi6mojPkL8xbwQd_X2_',
    ),
    HospitalModel(
      hospitalname: "Labaid Specialized Hospital",
      hostpitallocation: "Road No 4,Dhanmondi,Dhaka 1205",
      picture:
          "https://4.bp.blogspot.com/-SvF9FdhfUeM/WhPuvm83mrI/AAAAAAAAAAg/_DP0CPjEDG8up0kmIFJb8F0Zd0BK1I2SwCLcBGAs/s1600/01.jpg",
      icon:
          'https://www.jagojobs.com/media/company_logos/2017July/Labaid_Hospital_logo_20170704114847_2365.png',
    ),
    HospitalModel(
      hospitalname: "Green Life Hospital",
      hostpitallocation: " Green Rd,Dhaka",
      picture:
          "https://gmfadmission.in/wp-content/uploads/2018/03/green-life-hospital.jpg",
      icon: 'https://www.moumaachi.com/upload/company/251bdb2df3.jpg',
    ),
    HospitalModel(
      hospitalname: "Ibn Sina Hospital",
      hostpitallocation: "Dhanmondi ,Dhaka",
      picture:
          "https://hospital.bangladeshinformation.info/wp-content/uploads/sites/6/2016/08/Ibn-Sina-Hospital.jpg",
      icon:
          'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/feature/images/ibn-sina.jpg?itok=YKa5QIqV',
    ),
    HospitalModel(
      hospitalname: " Popular Hospital",
      hostpitallocation: "Dhanmondi, Dhaka-1205",
      picture:
          "http://cdn.yourarticlelibrary.com/wp-content/uploads/2014/04/Popular_Pharmaceuticals_Limited_Side_View_1.jpg",
      icon:
          'https://hirebangladeshi.com/uploads/company/logo/4bf8b729-dfb1-4765-a9f1-4dfa86ee4c73/p.png',
    ),
    HospitalModel(
      hospitalname: "Bangladesh Eye Hospital",
      hostpitallocation: "Satmasjid Road,Dhanmondi, Dhaka",
      picture: "https://i.ytimg.com/vi/wGj7s_qmNf4/maxresdefault.jpg",
      icon:
          'https://bdbusinessfinder.com/wp-content/uploads/2019/04/eyeR4-780x270.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospitla List'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: _hospitalsilt.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 05),
                child: InkWell(
                  onTap: () {
                    _showPopup(context, _hospitalsilt[index].hospitalname,
                        _hospitalsilt[index].hostpitallocation);
                  },
                  child: RoundedBox(
                    name: _hospitalsilt[index].hospitalname,
                    location: _hospitalsilt[index].hostpitallocation,
                    imageURL: _hospitalsilt[index].picture,
                    iconURL: _hospitalsilt[index].icon,
                  ),
                ),
              );
            }),
      ),
    );
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
          ));
}

class HospitalModel {
  final String hospitalname;
  final String hostpitallocation;
  final String picture;
  final String icon;

  HospitalModel(
      {this.hospitalname, this.hostpitallocation, this.picture, this.icon});
}
