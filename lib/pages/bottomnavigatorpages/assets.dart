import 'package:flutter/material.dart';

class Assets extends StatefulWidget {

  const Assets({Key? key}) : super(key: key);



  @override
  State<Assets> createState() => _MyAssetsState();
}

class _MyAssetsState extends State<Assets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [


          ],
        ),
      ),
    );
  }


}
