import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardSpendWidget extends StatelessWidget {
  const InfoCardSpendWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
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
                        image: AssetImage("assets/images/spending.png"),
                      ),
                      color: Color(0xFFE83F5B).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "A pagar",
                style: AppTheme.textStyles.button,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "R\$ 48,00",
                style: AppTheme.textStyles.infoCardS,
              )
            ],
          ),
        ),
      ),
    );
  }
}
