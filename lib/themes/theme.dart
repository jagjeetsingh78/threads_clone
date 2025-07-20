import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  useMaterial3: true,
  appBarTheme:const AppBarTheme(
    backgroundColor: Colors.black,
    surfaceTintColor: Colors.black,
    elevation:0.0,
  ),
  brightness: Brightness.dark,
   colorScheme: ColorScheme.dark(brightness: Brightness.dark ,
   background: Colors.black,
   onBackground: Colors.white,
   surfaceTint: Colors.black12,
   primary:Colors.white,
   onPrimary: Colors.black,
   ),



);
