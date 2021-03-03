import 'package:flutter/material.dart';

class LabelTimeline extends StatelessWidget {
  LabelTimeline({
    Key key,
    @required this.company,
    @required this.position,
    @required this.duration,
    this.detail,
  }) : super(key: key);

  String company;
  String position;
  String duration;
  String detail;

  Widget _detail = SizedBox(height: 0);

  Widget build(BuildContext context) {
    if (detail != null) {
      _detail = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Text(detail),
        ],
      );
    }

    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            position + ' • ' + company,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          Text(
            duration,
            style: TextStyle(color: Colors.black38),
          ),
          _detail,
          SizedBox(height: 10),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
