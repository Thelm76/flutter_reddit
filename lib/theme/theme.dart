import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Colors.white;

final secondaryColor = Colors.blue.shade800;

final background = Colors.grey.shade100;

const darkTextColor = Colors.black;
final textColor = Colors.grey.shade800;
final lightTextColor = Colors.grey.shade600;

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  final tabBarLabelStyle =
      GoogleFonts.roboto(fontWeight: FontWeight.w600, fontSize: 16);

  return base.copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: background,
    inputDecorationTheme: const InputDecorationTheme().copyWith(
      contentPadding: const EdgeInsets.all(10),
      isDense: true,
      filled: true,
      fillColor: background,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      prefixIconColor: textColor,
    ),
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: primaryColor,
      systemOverlayStyle: const SystemUiOverlayStyle().copyWith(
        statusBarColor: primaryColor,
      ),
      foregroundColor: textColor,
    ),
    tabBarTheme: const TabBarTheme().copyWith(
        labelColor: darkTextColor,
        labelStyle: tabBarLabelStyle,
        labelPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        unselectedLabelStyle: tabBarLabelStyle,
        unselectedLabelColor: lightTextColor),
    backgroundColor: background,
  );
}
