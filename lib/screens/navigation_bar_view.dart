import 'package:depi_task_3/screens/cart_screen.dart';
import 'package:depi_task_3/screens/home_screen.dart';
import 'package:depi_task_3/screens/profile_sreen.dart';
import 'package:flutter/material.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  List<Widget> screensList = [HomeScreen(), CartScreen(), ProfileScreen()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFAFAFA),
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: " Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: " Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: " Profile",
          ),
        ],
      ),
      body: screensList[selectedIndex],
    );
  }
}
