import 'package:flutter/material.dart';
import 'package:tk_apps/screens/HomeScreen.dart';
import 'package:tk_apps/screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (context) => HomeScreen(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}
