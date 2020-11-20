import 'package:flutter/material.dart';
import 'package:mark/page2.dart';

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin:EdgeInsets.only(left: 8, top:40),
                child: Text("Welcome To Omniwear \n        Shopping App", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),

              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF18D199)),
                    child: Icon(Icons.local_offer, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50, top: 60),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFFC6A7F)),
                    child: Icon(Icons.home, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, top: 60),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFFFCE56)),
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 130),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF45E0EC)),
                    child: Icon(Icons.place, color: Colors.white),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 208),
                          child: Text("Omniwear...",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w400)),
                        ),
                      ]),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 40, right: 40, top: 40),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          //gradient: LinearGradient(colors: [Color(0xFF18D199), Colors.white]),
                            color: Color(0xFF18D199),
                            borderRadius: BorderRadius.circular(10.0),
                            //border: Border.all(width: 0.5)
                            ),
                        child: TextField(
                            decoration: InputDecoration(
                              border:InputBorder.none,
                                hintText: "Sign in with Email",
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon:Icon(Icons.person, color: Colors.white,),
                                //icon: Icon(Icons.person, color: Colors.white)
                                )),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFF18D199),
                                  borderRadius: BorderRadius.circular(10.0),
                                  //border: Border.all(width: 0.5)
                                  ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.white),
                                  // icon: Icon(
                                  //   Icons.security,
                                  //   color: Colors.white,
                                  // ),
                                  prefixIcon: Icon(Icons.lock, color: Colors.white, )
                                ),
                              ))))
                ],
              ),
              GestureDetector(
                            child: Container(
                  height:30,
                  width:70,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Color(0xFF18D199),borderRadius: BorderRadius.circular(5)),
                  child:Center(child: Text("Sign UP", style: TextStyle(color: Colors.white, fontWeight:FontWeight.w600))),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Continuation()));
                  print("Sign up");
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Text("Copyright @Ganyoobi.Inc 2020", style: TextStyle(fontStyle: FontStyle.italic),
              )
              )],
          ),
        ),
      ),
    );
  }
}


