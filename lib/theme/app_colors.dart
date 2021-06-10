import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get title;
  Color get titleAppBar;
  Color get button;
  Color get border;
  Color get borderButton;
  Color get icon;
  Color get iconBackground1;
  Color get iconBackground2;
  Color get infoCardTitle;
  Color get infoCardReceive;
  Color get infoCardSend;
  Color get eventTileTitle;
  Color get eventTileSubtitle;
  Color get eventTileValue;
  Color get eventTilePeople;
  Color get divider;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get border => Color(0xFFDCE0E5);

  @override
  Color get titleAppBar => Color(0xFFFFFFFF);

  @override
  Color get borderButton => Color(0xFFFFFFFF);

  @override
  Color get icon => Color(0xFFF5F5F5);

  @override
  Color get iconBackground1 => Color(0xFFE9F8F2);

  @override
  Color get iconBackground2 => Color(0xFFE83F5B).withOpacity(0.1);

  @override
  Color get infoCardTitle => Color(0xFF666666);

  @override
  Color get infoCardReceive => Color(0xFF40B38C);

  @override
  Color get infoCardSend => Color(0xFFE83F5B);

  @override
  Color get eventTileTitle => Color(0xFF455250);

  @override
  Color get eventTileSubtitle => Color(0xFF666666);

  @override
  Color get eventTileValue => Color(0xFF666666);

  @override
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  Color get divider => Color(0xFF666666).withOpacity(0.2);
}
