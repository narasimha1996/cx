import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen_ui/custom_tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(179, 255, 255, 255),
      ),
      home: const CustomTabBar(),
    );
  }
}
