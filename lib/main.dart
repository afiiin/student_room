import 'package:flutter/material.dart';
import 'package:student_room/theme.dart';
import 'pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
