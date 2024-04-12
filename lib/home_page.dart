import 'package:flutter/material.dart';
import 'package:first_project/calculator_basic.dart';
import 'package:first_project/explore_tab.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Application"),backgroundColor: Colors.blue,
          leading: IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          },
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
              Tab(icon: Icon(Icons.family_restroom), text: "Team",) ,
            ],unselectedLabelColor: Color(0xffffffff),
            labelColor: Color(0xff00aaee),
          ),
          elevation: 30,
        ),
        body: TabBarView(
          children: [
            ExploreTab(), // Call exploreTab() to get the Widget it returns
            DashBoardTab(),
            Center(child: Text("Team")),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blue
                ),
                child: Text("My Application"),
              ),
              ListTile(
                title: const Text('Hide Side bar'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {},
              )
            ],
          ),
          // backgroundColor: Colors.white10,
        ),
      ),
    );
  }
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

class DialogMessage extends StatelessWidget{
  const DialogMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext contxt) => AlertDialog(
          title: const Text('Alert Dialog Title'),
          content: const Text('Alert Dialog message description'),
          actions: <Widget> [
            TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cansel')),
            TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK')),

          ],
        )
    ), child: const Text('Show Dialog'),);
  }
}
