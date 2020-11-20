import 'package:flutter/material.dart';
//import 'package:mark/project.dart';

class Continuation extends StatefulWidget {
  @override
  _ContinuationState createState() => _ContinuationState();
}

final List<Widget> screens = [
  HomePage(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
];

int selectedIndex = 0;

void onTapTapped(int index) {
  setState(() {
    selectedIndex = index;
  });
}

void setState(Null Function() param0) {}

class _ContinuationState extends State<Continuation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Omniwear"),
        backgroundColor: Color(0xFF18D199),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
             // Navigator.pop(context);
            },
          ),
        ],
      ),

      drawer: Drawer(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          DrawerHeader(
            //child: Center(child: Text("PROFILE",style: TextStyle(color: Colors.white))),
             child: Column(
               children: [
                 Icon(Icons.person,
                 color: Colors.white,
                 ),
                Text("PROFILE")
               ],
             ),
            padding: EdgeInsets.only(bottom:100),
            decoration: BoxDecoration(color: Color(0xFF18D199))
          ),
          
          ListTile(
            title: Text("Deals/Offers"),
            leading: Icon(Icons.local_offer_sharp,color: Colors.black),
            onTap: () {},
          ),

          ListTile(
            title: Text("Contact"),
            leading: Icon(Icons.call,color: Colors.black),
            onTap: () {},

          ),
          ListTile(
            title: Text("Email"),
            leading: Icon(Icons.email,color: Colors.black),
            onTap: () {},
          ),


           ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings,color: Colors.black),
            onTap: () {},
          ),

           ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.logout,color: Colors.black),
            onTap: () {},
          ),


          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info,color: Colors.black),
            onTap: () {},
          ),

        ],
      )),


       body: screens[selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text("Home", style: TextStyle(color: Colors.white))),
          BottomNavigationBarItem(
              icon: Icon(Icons.category,color: Colors.white),
              title: Text("Categories", style: TextStyle(color: Colors.white))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              title: Text("Account", style: TextStyle(color: Colors.white))),
          BottomNavigationBarItem(
              icon: Icon(Icons.help, color: Colors.white),
              title: Text("Help", style: TextStyle(color: Colors.white))),
        ],
        selectedItemColor: Colors.black,
        backgroundColor: Color(0xFF18D199),

        //fixedColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: onTapTapped,
      ),
    );
  }
}

class Model extends StatelessWidget {
  final String name;
  Model({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Center(
          child: Text(this.name,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
