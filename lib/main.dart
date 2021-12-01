import 'package:flutter/material.dart';
import 'package:instax020/Dashboard.dart';
import 'package:instax020/Detail.dart';
import 'package:instax020/item_detail.dart';
import 'package:instax020/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreenPage(),
        '/dashboard': (context) => DashboardPage(),
        '/details': (context) => Detail(),
        '/item_details': (context) => Itemdetails(),
      },
    );
  }
}
