

import 'dart:ui';

import 'package:flutter/Material.dart';


class AppTheme {

  static const Color primario = Colors.orange;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primaria
        primaryColor: Colors.indigo,
        //AppBar Theme
        appBarTheme:const AppBarTheme(
          color: primario,
          elevation: 0.0,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primario)
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primario,
          elevation: 5
        ),

        //ElevatedButtons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primario,
            shape: const StadiumBorder(),
            elevation: 0
          ),
        ),

        //inputDecorationTheme
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: primario,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:primario),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:primario),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
        ),


      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color primaria
        primaryColor: Colors.indigo,
        //AppBar Theme
        appBarTheme:const AppBarTheme(
          color: primario,
          elevation: 0.0,
        ),
        scaffoldBackgroundColor: Colors.black,

        //TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primario)
        ),

        //FloringActionButtonss
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primario,
          elevation: 5
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primario,
            shape: const StadiumBorder(),
            elevation: 0
          ),
        )

      );
  
}