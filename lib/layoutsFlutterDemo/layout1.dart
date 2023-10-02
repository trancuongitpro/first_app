import 'package:first_app/layout_demo.dart';
import 'package:flutter/material.dart';

void main(){

  //debugPaintSizeEnabled = true

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

@override
  Widget build(BuildContext context){
  return MaterialApp(
    title: 'Flutter layout demo',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    ),
  );
}
}
