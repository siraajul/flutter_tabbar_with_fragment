import 'package:flutter/material.dart';

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
              Text("1"),
              Text("2"),
              Text("3"),
              Text("4"),
              Text("5"),
              Text("6"),
              Text("7"),
              Text("8"),
            ],
          ),
        )
    );
    
  }
}