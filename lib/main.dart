import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import '/utils/firebase_options.dart';
import '/utils/app_theme.dart';

import '/widgets/bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme,
      home: const BottomNavBar(),
    );
  }
}
