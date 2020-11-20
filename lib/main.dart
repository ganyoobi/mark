import 'package:flutter/material.dart';
import 'package:mark/page2.dart';
import 'package:mark/project.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
     // home: Mark(),
     home: MyHomepage(),
    );
  }
}

class Mark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          DrawerHeader(
            child: Text("mark"),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {},
          ),

           ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
            onTap: () {},
          ),

           ListTile(
            title: Text("Services"),
            leading: Icon(Icons.design_services),
            onTap: () {},
          ),

           ListTile(
            title: Text("Contact us"),
            leading: Icon(Icons.call),
            onTap: () {},
          ),

           ListTile(
            title: Text("Email"),
            leading: Icon(Icons.home),
            onTap: () {},
          ),

        ],
      )),







      appBar: AppBar(
          title: Text(
            "Ganyoobi",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          //leading: Icon(Icons.menu),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                print("info");
              },
            ),
          ]),
      body: Model(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(children: <Widget>[
        Row(
          children: [
            Container(
              height: 50,
              //width: 300,
              //padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              //color: Colors.white,
              child: Icon(
                Icons.folder_open_outlined,
                color: Colors.blue,
                size: 50,
              ),
            ),
            Column(
              children: [
                Container(
                  //height: 50,
                  //width: double.infinity,
                  padding: EdgeInsets.only(top: 10),
                  margin: EdgeInsets.all(2),
                  //color: Colors.white,
                  child: Text(
                    "Files Sharing",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  //height: ,
                  //width: double.infinity,
                  //padding: EdgeInsets.only(top: 15),
                  margin: EdgeInsets.all(2),
                  //color: Colors.white,
                  child: Text(
                    "02/11/2020",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            SizedBox(width: 160),
            Container(
              height: 50,
              //width: 300,
              //padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              //color: Colors.white,
              child: Icon(
                Icons.share,
                color: Colors.blue,
                size: 30,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
