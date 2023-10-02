import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmployeeApp(),
    );
  }
}

class EmployeeApp extends StatefulWidget {
  @override
  _EmployeeAppState createState() => _EmployeeAppState();
}

class _EmployeeAppState extends State<EmployeeApp> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    EmployeeGrid(),
    EmployeeList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Management App'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: 'GridView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
        ],
      ),
    );
  }
}

class EmployeeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: employees.length, // Sử dụng số lượng nhân viên từ danh sách
      itemBuilder: (BuildContext context, int index) {
        return EmployeeCard(employee: employees[index]);
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(1, index.isEven ? 1.2 : 1.8),
    );
  }
}

class EmployeeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: employees.length, // Sử dụng số lượng nhân viên từ danh sách
      itemBuilder: (BuildContext context, int index) {
        return EmployeeCard(employee: employees[index]);
      },
    );
  }
}

class EmployeeCard extends StatelessWidget {
  final Employee employee;

  EmployeeCard({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: [
          Image.asset(
            'images/pic${employee.index + 1}.jpg',
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(employee.name),
            subtitle: Text('${employee.position} - ${employee.age} years old'),
          ),
        ],
      ),
    );
  }
}


class Employee {
  final String name;
  final String position;
  final int age;
  final int index;

  Employee({required this.name, required this.position, required this.age,required this.index});
}
final List<String> positions = [
  'Manager',
  'Developer',
  'Designer',
  'Accountant',
  'Salesperson',
  'Marketing Specialist',
  'HR Manager',
  // Thêm các vị trí khác vào danh sách
];

final List<String> names = [
  'Son',
  'Hai',
  'Nhat Anh',
  'Nam',
  'Nu',
  'Ngoc',
  'Bao',
  // Thêm các vị trí khác vào danh sách
];

final List<Employee> employees = List.generate(
  28,
      (index) => Employee(
    name: names[Random().nextInt(names.length)],
        position: positions[Random().nextInt(positions.length)],
    age: new Random().nextInt(50) + 25,
    index: index + 1,
  ),
);


