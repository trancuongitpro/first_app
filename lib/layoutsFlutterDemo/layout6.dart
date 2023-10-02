import 'package:first_app/layout_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
void main(){
  debugPaintSizeEnabled = false;

  runApp(const MyApp());



}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  static const showCart = true;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter 6 demo layout',

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter demo layout6'),
        ),
        body: Center(child: showCart ? _buildCard() : _buildStack()),
      ),
    );
  }

  //docregion Card
Widget _buildCard(){
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text('1625 Main Street',
              style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, Ca 999884'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),

            const Divider(),
            ListTile(
              title: const Text('(408) 55555 111212',
                    style: TextStyle(fontWeight:  FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            )
          ],
        ),
      ),
    );
}

//Stack
Widget _buildStack(){
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage : AssetImage('images/pic1.jpg'),
          radius:100,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
          ),
          child: const Text('Mia B',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
        ),
      ],
    );
}

}