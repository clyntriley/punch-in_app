




import 'package:flutter/material.dart';
import 'package:punchin/pages/Assets/chat.dart';

import '../widgets/bottomnavigatorwidget.dart';
import 'Assets/directory.dart';
import 'Assets/jobschedule.dart';
import 'Assets/request.dart';
import 'Assets/tasks.dart';
import 'Assets/timeclock.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);



  @override
  State<Homepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<Homepage> {



  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Artworks-01.jpg"),
            fit: BoxFit.cover)
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Column(
          children: [
            const Text(''),
          Row(
            children: const [
              SizedBox(
                width: 160,
                height: 130,
                child: CircleAvatar(
                  child: Text('Avatar'),
                ),
              ),
              Text("Welcome Glenn!"),
            ],
          ),
            const Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: const Size(100, 100), // button width and height
                    child: Material(
                      color: Colors.grey, // button color
                      child: InkWell(
                        splashColor: Colors.white, // splash color
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TimeClock(),
                              ));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  <Widget>[
                            Image.asset('assets/images/Artworks-03.jpg'), // icon
                             // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: const Size(100, 100), // button width and height
                    child: Material(
                      color: Colors.grey, // button color
                      child: InkWell(
                        splashColor: Colors.white, // splash color
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const JobSchedule(),
                              ));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  <Widget>[
                            Image.asset('assets/images/Artworks-04.jpg'), // icon
                            // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: const Size(100, 100), // button width and height
                    child: Material(
                      color: Colors.grey, // button color
                      child: InkWell(
                        splashColor: Colors.white, // splash color
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Chat(),
                              ));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  <Widget>[
                            Image.asset('assets/images/Artworks-05.jpg'), // icon
                            // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: const Size(100, 100), // button width and height
                    child: Material(
                      color: Colors.grey, // button color
                      child: InkWell(
                        splashColor: Colors.white, // splash color
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Director(),
                              ));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  <Widget>[
                            Image.asset('assets/images/Artworks-06.jpg'), // icon
                            // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: const Size(100, 100), // button width and height
                    child: Material(
                      color: Colors.grey, // button color
                      child: InkWell(
                        splashColor: Colors.white, // splash color
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Request(),
                              ));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  <Widget>[
                            Image.asset('assets/images/Artworks-07.jpg'), // icon
                            // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: const Size(100, 100), // button width and height
                    child: Material(
                      color: Colors.grey, // button color
                      child: InkWell(
                        splashColor: Colors.white, // splash color
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Tasks(),
                              ));
                        }, // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  <Widget>[
                            Image.asset('assets/images/Artworks-08.jpg'), // icon
                            // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            




          ]
        ),
    )


    );


}

}