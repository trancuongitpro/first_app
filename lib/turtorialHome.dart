import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    title: 'Flutter Tutorial',
    home: TutoriaHome(),
  ));
}

class TutoriaHome extends StatelessWidget{
  const TutoriaHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon : Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),

        title: const Text('Example title'),
        actions:  const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: const Center(
        child: Text('Hello Word'),
      ),

      floatingActionButton: const FloatingActionButton(onPressed: null, tooltip: 'Add', child: Icon(Icons.add),),
    );
  }
}