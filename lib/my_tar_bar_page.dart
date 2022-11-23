import 'package:flutter/material.dart';
import 'package:fifa_cup/Pages/fifa_cup_message_page.dart' show FifaCupMessagePage;
import 'package:fifa_cup/Pages/fifa_cup_contacts_page.dart' show FifaCupContactsPage;
import 'package:fifa_cup/Pages/fifa_cup_discovery_page.dart' show FifaCupDiscoveryPage;
import 'package:fifa_cup/Pages/fifa_cup_timeline_page.dart' show FifaCupTimelinePage;
import 'package:fifa_cup/Pages/fifa_cup_me_page.dart' show FifaCupMePage;


class MyTabBarPage extends StatefulWidget {
  MyTabBarPage({super.key,required this.title});
  final String title;


  @override
  State<MyTabBarPage> createState() => _MyTabBarPageState();
}

class _MyTabBarPageState extends State<MyTabBarPage> {
  int selectedIndex = 0;
  Widget _fifa_cup_message_page = FifaCupMessagePage();
  Widget _fifa_cup_contats_page = FifaCupContactsPage();
  Widget _fifa_cup_discovery_page = FifaCupDiscoveryPage();
  Widget _fifa_cup_timeline_page = FifaCupTimelinePage();
  Widget _fifa_cup_me_page = FifaCupMePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIFA Cup"),
      ),
      body:  this.getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.discord),label: 'Discovery'),
          BottomNavigationBarItem(icon: Icon(Icons.factory),label: 'Timeline'),
          BottomNavigationBarItem(icon: Icon(Icons.my_location),label: 'Me'),
        ],

        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody( )  {
    if(this.selectedIndex == 0) {
      return this._fifa_cup_message_page;
    } else if(this.selectedIndex==1) {
      return this._fifa_cup_contats_page;
    } else  if(this.selectedIndex==2){
      return this._fifa_cup_discovery_page;
    }else  if(this.selectedIndex==3){
      return this._fifa_cup_timeline_page;
    }else  {
      return this._fifa_cup_me_page;
    }
  }
  void onTapHandler(int index)  {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}

