import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class AppStyle {
  static final normalTexttSTyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Constants.primaryColorDark,
      fontFamily: 'Poppins',
      fontSize: 12,
    ),
  );

  static final normalWhiteBoldTexttSTyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Constants.primaryColorLight,
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w600),
  );

  static final mediumTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: 14,
    ),
  );

  static final labelTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.grey,
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w500),
  );

  static final mediumBoldTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w600),
  );

  static final largeBoldTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600),
  );

  static final smallBoldTextStyleWhite = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
        fontSize: 13,
        fontWeight: FontWeight.w600),
  );

  static final smallTexttSTyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.grey,
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w600),
  );
  static final smallWhiteTexttSTyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w600),
  );

  static final headerTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Constants.primaryColorLight,
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w500),
  );
}
