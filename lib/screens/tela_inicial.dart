
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help list for mothers"),
        centerTitle: true,
        backgroundColor: Color(0xFFc67c9d),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xff59e7af),
        color: Color(0xFFc67c9d),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          print(index);
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          
          Icon(
            Icons.bookmark,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}