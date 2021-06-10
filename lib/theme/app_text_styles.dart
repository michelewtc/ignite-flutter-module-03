import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appBar;
  TextStyle get infoCardTitle;
  TextStyle get infoCardValue1;
  TextStyle get infoCardValue2;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
        color: AppTheme.colors.titleAppBar,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
        color: AppTheme.colors.infoCardTitle,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get infoCardValue1 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardReceive,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  TextStyle get infoCardValue2 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardSend,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
}
