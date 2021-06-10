import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final events = [
    EventModel(
        title: 'Churrasco', created: DateTime.now(), value: 400, people: 6),
    EventModel(
        title: 'Concurso', created: DateTime.now(), value: -200, people: 1),
    EventModel(
        title: 'Bitcoin', created: DateTime.now(), value: 500, people: 1),
    EventModel(title: 'Pizza', created: DateTime.now(), value: 60, people: 3),
    EventModel(
        title: 'Supermercado', created: DateTime.now(), value: 100, people: 2),
  ];
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
        appBar: AppBarWidget(
          user: user,
          onTapAddButton: () {},
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...events
                      .map((e) => EventTileWidget(
                            model: e,
                          ))
                      .toList()
                ],
              ),
            )));
  }
}
