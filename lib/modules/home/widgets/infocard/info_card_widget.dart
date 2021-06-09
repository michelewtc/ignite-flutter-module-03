import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 176,
        height: 168,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: <BoxShadow>[BoxShadow(color: Colors.grey)]),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/revenue.png"),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xFF40B38C).withOpacity(0.12),
                        Color(0xFF45CC93).withOpacity(0.12),
                      ], transform: GradientRotation(7734.93 * (3.14 / 180))),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "A receber",
                style: AppTheme.textStyles.button,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "R\$ 124,00",
                style: AppTheme.textStyles.infoCardR,
              )
            ],
          ),
        ),
      ),
    );
  }
}
