import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_project/calculator_basic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Studing App",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Application"),backgroundColor: Colors.blue,
          leading: IconButton(onPressed: (){},
              icon: Icon(Icons.menu)), foregroundColor: Colors.white,
          actions: <Widget>[
            IconButton(onPressed: (){},
                icon: Icon(Icons.search)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.more_vert)),
          ],
          flexibleSpace: Image.asset("assests/AppBar.jpg", fit: BoxFit.fill),
          // flexibleSpace: Icon(
          //   Icons.photo_camera,
          //   size: 60,
          //   color: Colors.white70,
          // ),
        bottom: const TabBar(

          tabs: [
            Tab(icon: Icon(Icons.travel_explore), text: "Explore",),
            Tab(icon: Icon(Icons.calculate), text: "Calculator",),
            Tab(icon: Icon(Icons.family_restroom), text: "Team",),
            ],unselectedLabelColor: Color(0xffffffff),
              labelColor: Color(0xff00aaee),
          ),
          elevation: 30,
        ),
        body: TabBarView(
          children: [
            exploreTab(), // Call exploreTab() to get the Widget it returns
            DashBoardTab(),
            Center(child: Text("Team")),
          ],
        )
      ),
    );
  }
}

Widget exploreTab(){
  return Container(
    child: Center(
      child: Text('Explore World_!'),
    ),
  );
}

Widget DashBoardTab(){
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(10),
    height: double.infinity,
    width: double.infinity,
    color: Color(0xff1d2630),
    child: CalculatorBasic(),
      
  );
}