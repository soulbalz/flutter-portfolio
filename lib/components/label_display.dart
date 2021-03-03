import 'package:flutter/material.dart';

class LabelDisplay extends StatelessWidget {
  LabelDisplay({
    Key key,
    @required this.label,
    @required this.text,
  }) : super(key: key);

  String label;
  String text;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(text),
              ),
            ],
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: Colors.black12,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
