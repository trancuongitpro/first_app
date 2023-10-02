import 'package:flutter/material.dart';

void main() => runApp(const MyApp1());

class MyApp1 extends StatelessWidget{
  const MyApp1({super.key})  ;


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo ThiDk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cars'),
    );
  }
}


class MyHomePage extends StatelessWidget{
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(children: const <Widget> [
        CarWidget("BMW","M3", "https://picsum.photos/id/237/200/300"),
        CarWidget("BMW","M3", "https://picsum.photos/id/237/200/300"),
        CarWidget("BMW","M3", "https://picsum.photos/id/237/200/300"),



      ],)
    );
  }
}

class CarWidget extends StatelessWidget {
  const CarWidget(this.make, this.model, this.imageSrc , {super.key});

  final String make;
  final String model;
  final String imageSrc;

  @override
    Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(children: <Widget>  [
            Text('${make} ${model}', style: TextStyle(fontSize: 24.0)),
            Padding(padding: EdgeInsets.only(top:20.0),
            child: Image.network(imageSrc)
            
            ),
            
          ],),
        ),
      ),
    );
  }
}