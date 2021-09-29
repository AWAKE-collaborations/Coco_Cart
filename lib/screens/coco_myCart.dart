import 'package:flutter/material.dart';

class myCart extends StatefulWidget {
  static const routeName = '/myCart';
  const myCart({Key key}) : super(key: key);

  @override
  _myCartState createState() => _myCartState();
}

// ignore: camel_case_types
class _myCartState extends State<myCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      //body: SafeArea(listView),
      body: (Spacer()),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Container(
              //width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                children: [Text('Total')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
