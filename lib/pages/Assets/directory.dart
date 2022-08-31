
import 'package:flutter/material.dart';

class Director extends StatefulWidget {
  const Director({Key? key}) : super(key: key);




  @override
  State<Director> createState() => _DirectoryState();
}

class _DirectoryState extends State<Director> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
          Text("directory")
        ],),
      ),
    );
  }

}