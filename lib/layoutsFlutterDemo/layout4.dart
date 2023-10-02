import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main(){
  debugPaintSizeEnabled = true;

  runApp(const MyApp());


}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter layoyt',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo4'),

        ),

        body: Center(
          child: buildRow()),

      ),

    );
  }

  Widget buildRow() =>
      //row
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/pic1.jpg'),
        Image.asset('images/pic2.jpg'),
        Image.asset('images/pic3.jpg'),

      ],
    ); //end


  Widget buildColum() =>
      //colum
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/pic3.jpg'),
        Image.asset('images/pic3.jpg'),
        Image.asset('images/pic3.jpg'),

      ],
    );
}

