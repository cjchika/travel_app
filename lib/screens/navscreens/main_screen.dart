import 'package:flutter/material.dart';
import 'package:travel_app/screens/navscreens/bar_item_screen.dart';
import 'package:travel_app/screens/navscreens/profile_screen.dart';
import 'package:travel_app/screens/navscreens/search_screen.dart';
import 'package:travel_app/screens/navscreens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  List screens = [
    HomeScreen(),
    BarItemScreen(),
    SearchScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person))
        ],
      ),
    );
  }
}