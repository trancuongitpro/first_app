
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


void main(){
  debugPaintSizeEnabled = false ;
  runApp(const MyAppGrid());

}


class MyAppGrid extends StatelessWidget{
  const MyAppGrid({super.key});
  static const showGrid = true;


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title:  const Text('Flutter layout demo'),
        ),
        body: Center(
          child: showGrid ? _buildGrid() : _buildList(),
        ),
      ),
    );
  }

  Widget _buildGrid() => GridView.extent(

      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30));


  List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('images/pic$i.jpg'),)
  );


  Widget _buildList(){
    return ListView(
      children: [
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.theaters),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.theaters),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.theaters),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.theaters),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.theaters),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.theaters),
const Divider(

),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.restaurant),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.restaurant),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.restaurant),
        _tile('Lorem Ipsum is simply', 'dummy text of the printing a',Icons.restaurant),



      ],
    );

  }
  ListTile _tile(String title, String subtitle,IconData icon){
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}