import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio_website/util/colors.dart';

class AppTextStyle {
  static TextStyle headerTextStyle() {
    return GoogleFonts.poppins(
        fontSize: 19, fontWeight: FontWeight.normal, color: Colors.white);
  }

  static TextStyle logoTextStyle() {
    return GoogleFonts.poppins(
        fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold);
  }

  static TextStyle nameTextStyle(fontsize) {
    return GoogleFonts.poppins(
        fontSize: fontsize, color: Colors.white, fontWeight: FontWeight.normal);
  }

  static TextStyle name1TextStyle() {
    return GoogleFonts.poppins(
        letterSpacing: 3,
        fontSize: 36,
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }

  static TextStyle name2TextStyle() {
    return GoogleFonts.poppins(
        fontSize: 29, color: Colors.lightBlue, fontWeight: FontWeight.bold);
  }

  static TextStyle name3TextStyle() {
    return GoogleFonts.poppins(
        fontSize: 29, color: Colors.white, fontWeight: FontWeight.bold);
  }

  static TextStyle name4TextStyle() {
    return GoogleFonts.poppins(
        letterSpacing: 3,
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }

  static TextStyle name1TextStyleres(fontsize) {
    return GoogleFonts.poppins(
        fontSize: fontsize,
        letterSpacing: 3,
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }

  static TextStyle name3TextStyleres(fontsize) {
    return GoogleFonts.poppins(
        fontSize: fontsize, color: Colors.white, fontWeight: FontWeight.bold);
  }

  static TextStyle nameTextStyleres(fontsize) {
    return GoogleFonts.poppins(
        fontSize: fontsize, color: Colors.white, fontWeight: FontWeight.normal);
  }

  static TextStyle name2TextStyleres(fontsize) {
    return GoogleFonts.poppins(
        fontSize: fontsize,
        color: Colors.lightBlue,
        fontWeight: FontWeight.bold);
  }

  static TextStyle name4TextStyleres(fontsize) {
    return GoogleFonts.poppins(
        letterSpacing: 3,
        fontSize: fontsize,
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }
}
