import 'package:first_app/layout_demo.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main(){
  // debugPaintSizeEnabled = true;
  //
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  static const showGrid = true;


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter demo9 layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter layout demo'),
        ),
        body: Center(child: showGrid ? _buildGrid() : _buildList()),
      ),
    );
  }

  //grid

        Widget _buildGrid() => GridView.extent(maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30),

        );

    List<Container> _buildGridTileList(int count) => List.generate(count, (i) => Container(child: Image.asset('images/pic$i.jpg')),


    );

      Widget _buildList(){
        return ListView(
          children: [
            _tile('CineArts at the Empire','85W Portal Ave',Icons.theaters),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.theaters),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.theaters),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.theaters),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.theaters),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.theaters),
            const Divider(),

            _tile('CineArts at the Empire','85W Portal Ave',Icons.restaurant),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.restaurant),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.restaurant),
            _tile('CineArts at the Empire','85W Portal Ave',Icons.restaurant),


          ],
        );
      }

      ListTile _tile(String title, String subtitle,IconData icon){
        return ListTile(
          title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
          subtitle: Text(subtitle),
          leading: Icon(
            icon,
            color: Colors.blue[500],
          ),
        );
      }
        }