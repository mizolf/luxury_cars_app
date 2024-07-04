import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxury_cars_app/screens/login_screen.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: const ColorScheme.dark(),
      ),
      home: const LoginScreen(),
    );
  }
}
