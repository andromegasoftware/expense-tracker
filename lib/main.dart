import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 6, 85, 175));

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
      ),

      theme: ThemeData().copyWith(useMaterial3: true, 
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 96, 59, 181),
        foregroundColor: Colors.white
      ),
      cardTheme: CardTheme(
        color: const Color.fromARGB(255, 184, 163, 232),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 184, 163, 232),
        )
      ),
      /* textTheme: ThemeData().textTheme.copyWith(
        bodyMedium: const TextStyle(
          fontSize: 18,
          color: Colors.white
        ),
      ), 
      iconTheme: const IconThemeData(
        color: Colors.white
      ),*/
      ),
      themeMode: ThemeMode.system, //default
      home: const Expenses()
      
    ),
    );
}




