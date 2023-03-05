import 'package:flutter/material.dart';
import 'package:flutter_tabbar_with_fragment/fragment/alarmfragment.dart';
import 'package:flutter_tabbar_with_fragment/fragment/contactfragment.dart';
import 'package:flutter_tabbar_with_fragment/fragment/emailfragment.dart';
import 'package:flutter_tabbar_with_fragment/fragment/homefragment.dart';
import 'package:flutter_tabbar_with_fragment/fragment/locationfragment.dart';
import 'package:flutter_tabbar_with_fragment/fragment/personfragment.dart';
import 'package:flutter_tabbar_with_fragment/fragment/searchfragment.dart';
import 'package:flutter_tabbar_with_fragment/fragment/settingsfragment.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 8,
        child:Scaffold(
          appBar: AppBar(title: Text("TabBar & Fragments "),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.search),text: "Search",),
              Tab(icon: Icon(Icons.settings),text: "Settings"),
              Tab(icon: Icon(Icons.email),text: "E-Mail",),
              Tab(icon: Icon(Icons.contact_page_rounded),text: "Contact",),
              Tab(icon: Icon(Icons.person),text: "Profile",),
              Tab(icon: Icon(Icons.access_alarm),text: "Alarm",),
              Tab(icon: Icon(Icons.location_on),text: "Location",),
            ],
          ),
          ),
          body: TabBarView(
            children: [
              homefragment(),
              searchfragment(),
              settingsfragment(),
              emailfragment(),
              contactfragment(),
              personfragment(),
              alarmfragment(),
              locationfragment(),

            ],
          ),
        )
    );
    
  }
}