import 'package:flutter/material.dart';
import 'package:stack_listview_ui/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Splash_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}
