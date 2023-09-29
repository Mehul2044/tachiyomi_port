import 'package:flutter/material.dart';

import '/widgets/browse_screen_tabs/extensions.dart';
import '/widgets/browse_screen_tabs/migrate.dart';
import '/widgets/browse_screen_tabs/sources.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Browse"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.travel_explore),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_list),
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(text: "Sources"),
            Tab(text: "Extensions"),
            Tab(text: "Migrate"),
          ]),
        ),
        body: const TabBarView(
          children: [
            Sources(),
            Extensions(),
            Migrate(),
          ],
        ),
      ),
    );
  }
}
