import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userapp/pages/homepage.dart';
import 'package:userapp/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,

      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    );
  }
}