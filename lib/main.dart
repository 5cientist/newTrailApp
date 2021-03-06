import 'package:flutter/material.dart';
import 'package:newtrailapp/screens/Form/formpage.dart';
import 'package:newtrailapp/screens/homepage/homepage.dart';

import 'screens/showall/showalldetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'trailapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        ShowAllDetails.routeName: (context) => ShowAllDetails(),
        FormPage.routeName: (context) => FormPage(),
      },
      home: HomePage(),
    );
  }
}
