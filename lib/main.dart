import 'package:burc_rehberi/burc_listesi.dart';
import 'package:flutter/material.dart';
import 'package:burc_rehberi/data/strings.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home:  BurcListesi(),
    );
  }
}