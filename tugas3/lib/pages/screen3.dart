import 'package:flutter/material.dart';

class masuk extends StatefulWidget {
  const masuk({Key? key}) : super(key: key);

  @override
  State<masuk> createState() => _masukState();
}

class _masukState extends State<masuk> {
  int _currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final tabs = [
    Center(child: Text("Index 0: Home", style: optionStyle)),
    Center(child: Text("Index 1: Business", style: optionStyle)),
    Center(child: Text("Index 2: School", style: optionStyle)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "School",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
