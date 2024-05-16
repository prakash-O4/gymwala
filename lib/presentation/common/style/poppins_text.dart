import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget popinsText({
  required String text,
  TextStyle? style,
  TextAlign? align,
  TextDecoration? decoration,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: style,
    ),
    textAlign: align,
  );
}
