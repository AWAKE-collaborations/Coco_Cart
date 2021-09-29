import 'package:cococ/screens/coco_catalogue.dart';
import 'package:cococ/screens/coco_myCart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Constants
import 'constants.dart';

//MainScreen
import 'package:cococ/screens/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      home: MainScreen(),
      routes: {
        Coco_Catalogue.routeName: (context) => Coco_Catalogue(),
        myCart.routeName: (context) => myCart()
      },
    );
  }
}
