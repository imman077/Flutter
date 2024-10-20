import 'package:flutter/material.dart';
import 'package:flutter_demo/views/todo_page.dart';
import 'package:get/get.dart';
import 'controllers/todo_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}
