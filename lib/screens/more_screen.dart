import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  top: deviceHeight * 0.07, bottom: deviceHeight * 0.03),
              alignment: Alignment.center,
              child: SvgPicture(
                const AssetBytesLoader("assets/images/tachiyomi_logo.svg.vec"),
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: deviceHeight * 0.1,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.cloud_off),
              title: const Text("Downloaded only"),
              subtitle: const Text("Filters all entries in your library"),
              trailing: Switch.adaptive(value: false, onChanged: (value) {}),
            ),
            ListTile(
              leading: const Icon(Icons.private_connectivity_outlined),
              title: const Text("Incognito Mode"),
              subtitle: const Text("Pauses Reading History"),
              trailing: Switch.adaptive(value: false, onChanged: (value) {}),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.download_outlined),
              title: Text("Download Queue"),
            ),
            const ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text("Categories"),
            ),
            const ListTile(
              leading: Icon(Icons.auto_graph_rounded),
              title: Text("Statistics"),
            ),
            const ListTile(
              leading: Icon(Icons.settings_backup_restore),
              title: Text("Backup and restore"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            const ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
            ),
            const ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Help"),
            ),
          ],
        ),
      ),
    );
  }
}
