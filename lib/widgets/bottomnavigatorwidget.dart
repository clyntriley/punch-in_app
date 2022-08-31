import 'package:flutter/material.dart';
import 'package:punchin/pages/bottomnavigatorpages/admin.dart';
import 'package:punchin/pages/bottomnavigatorpages/profile.dart';
import 'package:punchin/pages/homepage.dart';
import '../pages/bottomnavigatorpages/assets.dart';
import '../pages/bottomnavigatorpages/notification.dart';




class BotNavWid extends StatelessWidget {
     BotNavWid({Key? key}) : super(key: key);

     int selectedIndex = 0;
  final Widget admin = const Admin();
  final Widget notif = const Notifications();
  final Widget myProfile = const Profile();
  final Widget assets = const Assets();
  final Widget homepage = const Homepage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Assets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap:(index){
            onTapHandler(index);
        },
      ),
    );

  }

   Widget getBody( )  {
     if(selectedIndex == 0) {
       return homepage;
     } else if(selectedIndex==1) {
       return assets;
     } else if(selectedIndex==2){
       return notif;
     }else if(selectedIndex==3) {
       return myProfile;
     } else {
       return admin;
     }
   }

   void onTapHandler(int index)  {
       selectedIndex = index;
   }
}











