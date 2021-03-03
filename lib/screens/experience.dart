import 'package:flutter/material.dart';
import 'package:portfolio/components/label_timeline.dart';

class ExperienceScreen extends StatefulWidget {
  @override
  _ExperienceScreenState createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ประวัติการทำงาน'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              LabelTimeline(
                company: 'BluePi Co., Ltd.',
                position: 'Senior DevOps Engineer',
                duration: 'มกราคม 2564 - ปัจจุบัน',
                detail:
                    '‣ Design infrastructure architecture to support software applications\n\n‣ Perform infrastructure and CI/CD to support development team\n\n‣ Optimize service performance\n\n‣ Setup monitoring tool for watching out system performance\n\n‣ Perform tracking issues and investigate root causes\n\n‣ Participate with team to suggest any idea or recommendation',
              ),
              LabelTimeline(
                company: 'Nation Multimedia Group Co., Ltd.',
                position: 'Data Engineer',
                duration: 'ธันวาตม 2562 - ธันวาคม 2563',
                detail:
                    '‣ Create an analytics script to collect extra information to identify user behavior\n\n‣ Qualify code quality from developer\n\n‣ Performance tuning of application\n\n‣ help to improve team skill',
              ),
              LabelTimeline(
                company: 'SSTP Enterprise Co., Ltd.',
                position: 'Senior Backend Developer',
                duration: 'กรกฎาคม 2562 - พฤศจิกายน 2563',
                detail:
                    '‣ Making an API backend with Python\n\n‣ Making bot for create game lobby and submit the result to system\n\n‣ Make an automation script with Python and Shell script.\n\n‣ Investing, fixing and testing software defects.',
              ),
              LabelTimeline(
                company: 'Zync Solution Part., Ltd.',
                position: 'Software Team Lead',
                duration: 'มีนาคม 2562 - มิถุนายน 2563',
                detail:
                    '‣ Help and teach the team to make an application\n\n‣ Get the requirements from the client\n\n‣ Enumerate the work that needs to be done to the team\n\n‣ Create a frontend with React Js\n\n‣ Making an API backend with Python Django\n\n‣ Make an automation script with Python and Shell script.\n\n‣ Make an environment to develop and production with AWS.\n\n‣ Monitoring website and platform performance.\n\n‣ Investing, fixing and testing software defects.',
              ),
              LabelTimeline(
                company: 'Pendata Asia Co., Ltd.',
                position: 'DevOps Engineer',
                duration: 'มิถุนายน 2558 - กุมภาพันธ์ 2562',
                detail:
                    '‣ Make an automation scripts with Python and Shell script .\n\n‣ Make an environment for develop and production with AWS.\n\n‣ Create a micro services with AWS Lambda and make it to REST API with AWS API Gateway.\n\n‣ Create a mobile application (Simple Application) for android.\n\n‣ Create a web application with Python Django and PHP.\n\n‣ Monitoring website and platform performance.\n\n‣ Investing, fixing and testing software defects.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
