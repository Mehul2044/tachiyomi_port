import 'package:flutter/material.dart';

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
    const BrowseScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery_outlined),
            label: "Browse",
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
