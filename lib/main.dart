import 'package:flutter/material.dart';
import 'package:notes_app/constants/my_colors.dart';
import 'package:notes_app/views/screens/on_boarding_screen.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: MyColors.myWhite,
      appBarTheme: AppBarTheme(backgroundColor: MyColors.myWhite)

    ),
      
      home: const OnBoardingScreen(),
    );
  }
}

