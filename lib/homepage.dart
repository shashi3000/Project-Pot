import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';
import 'package:flutter_application_1/pages/humidity.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/temperature.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget> _pages=[
    MyAnimatedBackground(),
    Humidity(),
    Temperature(),
    Profile()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Pot"),
        bottomOpacity: 0,
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.water_drop_outlined),label: "Humidity"),
        BottomNavigationBarItem(icon: Icon(Icons.sunny),label: "Temperature"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ]),
    );
  }
}