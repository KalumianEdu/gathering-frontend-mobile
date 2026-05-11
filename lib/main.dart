import 'package:flutter/material.dart';

// Import pages
import 'package:gatheringapp/pages/login_pages/login.dart';
import 'package:gatheringapp/shared/custom.theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: LoginPage(),
    );
  }
}
