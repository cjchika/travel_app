import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MENU
          Container(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Row(
              children: [
                const Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.withOpacity(0.2)),
                  child: Image.asset("img/user.png"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          // DISCOVER
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const AppLargeText(text: "Discover"),
          ),
          const SizedBox(height: 30),
          // TABBAR
        ],
      ),
    );
  }
}













