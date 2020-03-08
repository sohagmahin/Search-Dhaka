import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:local_bus_dhaka_route/util/constant.dart';

class HotlineNumbers extends StatelessWidget {
  static const routeName = '/hotline/hotline_numbers';
  List mapList = KConstant.emergencyMapList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotline Number'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: mapList.length,
            itemBuilder: (context, index) {
              return EmergencyCard(
                index: index + 1,
                divison: mapList[index]['division'],
                mapList: mapList[index]['infoList'],
              );
            }),
      ),
    );
  }
}

class EmergencyCard extends StatefulWidget {
  final int index;
  final String divison;
  final List mapList;

  EmergencyCard({
    this.index,
    this.divison,
    this.mapList,
  });

  @override
  _EmergencyCardState createState() => _EmergencyCardState();
}

class _EmergencyCardState extends State<EmergencyCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Card(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
            child: ListTile(
              //show a division name
              title: Text(widget.divison),
//            subtitle: Text('Any information from all over the country'),
              leading: CircleAvatar(
                //show a division index number
                child: Text(widget.index.toString()),
              ),
              trailing: IconButton(
                  icon: Icon(
                      _expanded ? Icons.arrow_drop_down : Icons.arrow_drop_up),
                  onPressed: () {
                    setState(() {
                      _expanded = !_expanded;
                    });
                  }),
            ),
          ),
          if (_expanded)
            Container(
              height: widget.mapList.length <= 2 ? height * 0.3 : height * 0.5,
              child: ListView.builder(
                  itemCount: widget.mapList.length,
                  itemBuilder: (context, index) {
                    return EInstitutionTile(
                      institutionName: widget.mapList[index]['name'],
                      location: widget.mapList[index]['location'],
                      phone: widget.mapList[index]['phone'],
                      tel: widget.mapList[index]['tel'],
                      fax: widget.mapList[index]['fax'],
                      email: widget.mapList[index]['email'],
                    );
                  }),
            )
        ],
      ),
    );
  }
}

class EInstitutionTile extends StatefulWidget {
  final String institutionName;
  final String location;
  final String phone;
  final String tel;
  final String fax;
  final String email;

  EInstitutionTile({
    this.institutionName,
    this.location,
    this.phone,
    this.tel,
    this.fax,
    this.email,
  });
  @override
  _EInstitutionTileState createState() => _EInstitutionTileState();
}

class _EInstitutionTileState extends State<EInstitutionTile> {
  bool _subExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 20),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  _subExpanded = !_subExpanded;
                });
              },
              child: ListTile(
                title: Text(widget.institutionName),
                subtitle: Text(
                    "Gulshan, Badda, Cantonment, Airport & Uttara Thana areas"),
                trailing: IconButton(
                    icon: Icon(_subExpanded
                        ? Icons.arrow_drop_down
                        : Icons.arrow_drop_up),
                    onPressed: () {
                      setState(() {
                        _subExpanded = !_subExpanded;
                      });
                    }),
              ),
            ),
            if (_subExpanded)
              Column(
                children: <Widget>[
                  buildContactsRow(label: 'Phone :', number: widget.phone),
                  buildContactsRow(label: 'Tel :', number: widget.tel),
                  buildContactsRow(
                      label: 'Fax :', number: widget.fax, bVisible: false),
                  buildContactsRow(
                      label: 'Email', number: widget.email, isEmail: true),
                ],
              )
          ],
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: Text('Copied to Clipboard'),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  Row buildContactsRow(
      {String label,
      String number,
      bool bVisible = true,
      bool isEmail = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('$label'),
        SizedBox(
          width: 10,
        ),
        SelectableText('$number'),
        SizedBox(width: 50),
        IconButton(
          icon: Icon(Icons.content_copy),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: number));
            _showSnackbar(context);
          },
        ),
        bVisible
            ? IconButton(
                icon: Icon(isEmail ? Icons.email : Icons.call),
                onPressed: () {
                  try {
                    isEmail ? launch('mailto:$number') : launch('tel:$number');
                  } catch (e) {
                    print(e.toString());
                  }
                },
              )
            : Container(
                width: 50,
              ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
