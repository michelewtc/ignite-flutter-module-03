import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(user.photUrl!)),
        title: Text(user.name!),
      ),
    );
  }
}