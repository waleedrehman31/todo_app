import 'package:flutter/material.dart';
import 'package:todo_app/page/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // initialize hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox("mybox");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
