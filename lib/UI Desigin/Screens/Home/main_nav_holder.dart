import 'package:flutter/material.dart';

import '../../Widget/app_bar.dart';
import 'education.dart';
import 'home.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
  int _selectIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    Education(),
    Center(child: Text("Canceled Screen")),
    Center(child: Text("Completed Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppBar(),
      body: _screens[_selectIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              indicatorColor: Colors.green,
            ),
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              selectedIndex: _selectIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.cast_for_education_outlined),
                  label: 'Education',
                ),
                NavigationDestination(
                  icon: Icon(Icons.close),
                  label: 'Canceled',
                ),
                NavigationDestination(
                  icon: Icon(Icons.done),
                  label: 'Completed',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
