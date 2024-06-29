import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_screen.dart';
import 'package:flutter_application_1/widgets/bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavbarProvider(),
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
