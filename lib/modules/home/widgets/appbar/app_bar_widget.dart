import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/infocard/info_card_spend_widget.dart';
import 'package:split_it/modules/home/widgets/infocard/info_card_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
            preferredSize: Size.fromHeight(244),
            child: Container(
              height: 264,
              child: Stack(
                children: [
                  Container(
                    height: 244,
                    width: double.maxFinite,
                    decoration:
                        BoxDecoration(gradient: AppTheme.gradients.background),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(user.photUrl!))),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "${user.name}",
                                    style: AppTheme.textStyles.titleBold,
                                  )),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 53,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  //child: Icon(Icons.add),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[Icon(Icons.add)],
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      side: BorderSide(
                                          color: Colors.white38, width: 1.2)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment(0.0, 2.4),
                        child: InfoCardWidget(),
                      ),
                      Align(
                        alignment: Alignment(0.0, 2.4),
                        child: InfoCardSpendWidget(),
                      ),
                    ],
                  ),
                ],
              ),
            ));
}
