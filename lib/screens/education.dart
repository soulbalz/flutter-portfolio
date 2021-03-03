import 'package:flutter/material.dart';
import 'package:portfolio/components/label_timeline.dart';

class EducationScreen extends StatefulWidget {
  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ประวัติการศึกษา'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LabelTimeline(
              company: 'สถาบันเทคโนโลยีปทุมวัน',
              position: 'วทบ. วิศวกรรมซอฟต์แวร์และระบบสาระสนเทศ',
              duration: 'มิถุนายน 2561 - ปัจจุบัน',
            ),
            LabelTimeline(
              company: 'วิทยาลัยเทคนิคสระแก้ว',
              position: 'ปวช. ไฟฟ้าและอิเล็กทรอนิกส์',
              duration: 'พฤษภาคม 2552 - มีนาคม 2555',
            ),
          ],
        ),
      ),
    );
  }
}
