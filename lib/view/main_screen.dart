import 'package:flutter/material.dart';
import 'package:news_app/view/home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: bottom_nabBar_icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: bottom_nabBar_icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: bottom_nabBar_icon(Icons.save), label: ''),
          BottomNavigationBarItem(
              icon: bottom_nabBar_icon(Icons.list), label: ''),
          BottomNavigationBarItem(
              icon: bottom_nabBar_icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

Padding bottom_nabBar_icon(
  IconData icon,
) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade300),
        child: Icon(icon)),
  );
}
