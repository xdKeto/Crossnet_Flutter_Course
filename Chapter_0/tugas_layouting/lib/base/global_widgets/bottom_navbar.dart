import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';
import 'package:tugas_layouting/screens/home/home_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbar();
}

class _BottomNavbar extends State<BottomNavbar> {
  final appScreens = [
    const HomeScreen(),
    const Center(
      child: Text('ini explore'),
    ),
    const Center(
      child: Text('ini bookmark'),
    ),
    const Center(
      child: Text('ini profile'),
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.accentColor,
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: AppStyles.primaryColor,
          unselectedItemColor: AppStyles.grayColor,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_20_regular),
                activeIcon: Icon(FluentIcons.home_20_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.compass_northwest_20_regular),
                activeIcon: Icon(FluentIcons.compass_northwest_20_filled),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.bookmark_20_regular),
                activeIcon: Icon(FluentIcons.bookmark_20_filled),
                label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_20_regular),
                activeIcon: Icon(FluentIcons.person_20_filled),
                label: 'Profile'),
          ]),
    );
  }
}
