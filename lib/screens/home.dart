import 'package:flutter/material.dart';
import 'package:portfolio/components/label_display.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peerachat\' Portfolio'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            SizedBox(height: 40),
            LabelDisplay(label: 'ชื่อ:', text: 'โอ'),
            LabelDisplay(label: 'ตำแหน่ง:', text: 'Senior DevOps Engineer'),
            LabelDisplay(label: 'บริษัท:', text: 'BluePi Co., Ltd.'),
            SizedBox(height: 20),
            RaisedButton(
              color: Theme.of(context).buttonTheme.colorScheme.primary,
              onPressed: () => Navigator.of(context).pushNamed('/profile'),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 0,
                ),
                child: Text(
                  'ข้อมูลส่วนตัว',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Theme.of(context).buttonTheme.colorScheme.primary,
              onPressed: () => Navigator.of(context).pushNamed('/education'),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 0,
                ),
                child: Text(
                  'ประวัติการศึกษา',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Theme.of(context).buttonTheme.colorScheme.primary,
              onPressed: () => Navigator.of(context).pushNamed('/experience'),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 0,
                ),
                child: Text(
                  'ประวัติการทำงาน',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
