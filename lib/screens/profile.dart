import 'package:flutter/material.dart';
import 'package:portfolio/components/label_display.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ข้อมูลส่วนตัว'),
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
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Senior DevOps Engineer at BluePi Co., Ltd.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            LabelDisplay(
              label: 'ชื่อ - นามสกุล:',
              text: 'พีรชัช องค์ยา',
            ),
            LabelDisplay(
              label: 'ชื่อเล่น:',
              text: 'โอ',
            ),
            LabelDisplay(
              label: 'วันเกิด:',
              text: '11 พ.ย. 2536',
            ),
            LabelDisplay(
              label: 'ระดับการศึกษา:',
              text: 'ปริญญาตรี (กำลังศึกษา)',
            ),
            LabelDisplay(
              label: 'เบอร์โทรศัพท์:',
              text: '095-954-9404',
            ),
            LabelDisplay(
              label: 'อีเมล์:',
              text: 'soulister.o@gmail.com',
            ),
            LabelDisplay(
              label: 'ที่อยู่ปัจจุบัน:',
              text: '418/155 ถนนอ่อนนุช แขวงอ่อนนุช เขตสวนหลวง กรุงเทพฯ 10250',
            ),
          ],
        ),
      ),
    );
  }
}
