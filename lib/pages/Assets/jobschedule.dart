import 'package:flutter/material.dart';

class JobSchedule extends StatefulWidget {
  const JobSchedule({Key? key}) : super(key: key);




  @override
  State<JobSchedule> createState() => _JobScheduleState();
}

class _JobScheduleState extends State<JobSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: const [
          Text("Job Schedule")
        ],),
      ),
    );
  }

}