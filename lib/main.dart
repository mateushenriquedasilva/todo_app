import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();
  // open the box
  var box = await Hive.openBox('mybox');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
