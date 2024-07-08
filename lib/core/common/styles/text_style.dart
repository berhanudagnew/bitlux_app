import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kTitleTextStyle = GoogleFonts.roboto(
  color: BitLuxColors.light,
  letterSpacing: 2,
  fontSize: BitLuxSizes.fontSizeLg,
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.none,
  decorationStyle: TextDecorationStyle.dashed,
);

TextStyle kSubtitleTextStyle = GoogleFonts.roboto(
  color: BitLuxColors.light,
  letterSpacing: 2,
  fontSize: BitLuxSizes.fontSizeMd,
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.none,
  decorationStyle: TextDecorationStyle.dashed,
);
