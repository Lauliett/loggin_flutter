import 'dart:ui';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color action = Colors.pink;
  static const Color decoration = Colors.green;
  static const Color neutro = Colors.grey;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: decoration,

    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: decoration,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: action,
        elevation: 0,
        shape: const StadiumBorder()
      )
    ),

    inputDecorationTheme:  const InputDecorationTheme(
      
      floatingLabelStyle: TextStyle(color: neutro),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green)),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink),
      ),            
    ),
  
    iconTheme: const IconThemeData(color: neutro),
  );
}
