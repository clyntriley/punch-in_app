import 'package:flutter/material.dart';

class Profile extends StatefulWidget {

  const Profile({Key? key}) : super(key: key);



  @override
  State<Profile> createState() => _MyProfileState();
}

class _MyProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
