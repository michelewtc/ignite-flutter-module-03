import 'package:flutter/cupertino.dart';
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
  TextStyle get eventTileTitle;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTileValue;
  TextStyle get eventTilePeople;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;
  TextStyle get stepperNextButton;
  TextStyle get stepperNextButtonDisabled;
  TextStyle get stepperTitle;
  TextStyle get stepperSubtitle;
  TextStyle get hintTextField;
  TextStyle get textField;
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

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileTitle,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileValue => GoogleFonts.inter(
        color: AppTheme.colors.eventTileValue,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
        color: AppTheme.colors.eventTilePeople,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButton,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepperNextButtonDisabled => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButtonDisabled,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepperTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperTitle,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get stepperSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperSubtitle,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        color: AppTheme.colors.hintTextField,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}
