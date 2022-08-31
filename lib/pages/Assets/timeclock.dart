import 'package:flutter/material.dart';

class TimeClock extends StatefulWidget {
  const TimeClock({Key? key}) : super(key: key);



  @override
  State<TimeClock> createState() => _TimeClockState();
}

class _TimeClockState extends State<TimeClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: const [
          Text("time clock")
        ],),
      ),
    );
  }

}