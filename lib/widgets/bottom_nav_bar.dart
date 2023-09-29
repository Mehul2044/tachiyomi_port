import 'package:flutter/material.dart';

import '/screens/history_screen.dart';
import '/screens/updates_screen.dart';
import '/screens/more_screen.dart';
import '/screens/browse_screen.dart';
import '/screens/library_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const LibraryScreen(),
    const UpdatesScreen(),
    const HistoryScreen(),
    const BrowseScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.greenAccent,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery_outlined),
            label: "Browse",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "More",
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
