import 'package:flutter/material.dart';

//Screen
import 'coco_catalogue.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //MainScreen APPBAR
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "AwAke",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/Profile.png'),
            color: Colors.black,
          )
        ],
      ),

      //BODY
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
            //color: Colors.black,
            width: double.infinity,
            height: 200,
            child: FittedBox(
              fit: BoxFit.fill,
              child: TextButton(
                child: Image.asset('assets/images/i1.png'),
                onPressed: () {
                  Navigator.pushNamed(context, Coco_Catalogue.routeName);
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
