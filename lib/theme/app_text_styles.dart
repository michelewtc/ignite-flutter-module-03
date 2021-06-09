import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get titleBold;
  TextStyle get button;
  TextStyle get infoCardS;
  TextStyle get infoCardR;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get titleBold => GoogleFonts.montserrat(
        color: AppTheme.colors.backgroundPrimary,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get infoCardS => GoogleFonts.inter(
        color: Color(0xFFE83F5B),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get infoCardR => GoogleFonts.inter(
        color: Color(0xFF40B38C),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
}
