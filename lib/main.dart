import 'package:flutter/material.dart';
import 'package:fxpipstrader/view/HomeScreen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FXPIPSTRADER',debugShowCheckedModeBanner: false,
      home:HomeScreen() ,);
  }
}
