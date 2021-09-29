import 'package:cococ/screens/coco_myCart.dart';
import 'package:flutter/material.dart';

//Class

import 'package:cococ/cocoItems.dart';

// ignore: camel_case_types
class Coco_Catalogue extends StatelessWidget {
  const Coco_Catalogue({Key key}) : super(key: key);
  static const routeName = '/Coco_Catalogue';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CoCo KART'),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/images/Profile.png",
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: (items).map((e) {
            return Container(
              //Each item in infinity width 175pixel height
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              //color: Colors.lightBlue,
              width: double.infinity,
              height: 165,
              child: Card(
                elevation: 10,
                child: Row(
                  children: [
                    //1
                    Container(
                      width: 165,
                      height: 165,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: e.img,
                      ),
                    ),

                    Container(
                      width: 190,
                      height: 165,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 13,
                            width: 190,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: 190,
                            height: 20,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                e.item_name,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: 190,
                            height: 20,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "₹ ${e.price}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 190,
                          ),
                          //increment
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: 190,
                            height: 50,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                color: Colors.brown[500],
                                width: 90,
                                height: 35,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "ADD",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add),
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        height: 55,
        color: Colors.brown[500],
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 200,
            height: 40,
            child: TextButton(
              child: Text(
                "View Cart",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, myCart.routeName);
              },
            ),
          ),
        ),
      ),
    );
  }
}
