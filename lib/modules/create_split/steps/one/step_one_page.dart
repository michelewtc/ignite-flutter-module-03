import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';

import 'package:split_it/theme/app_theme.dart';

class StepOnePage extends StatefulWidget {
  final void Function(String value) onChange;
  const StepOnePage({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Qual o nome \n",
          subtitle: "do evento ?",
        ),
        StepInputTextWidget(
            onChange: widget.onChange, hintText: "Ex: Churrasco")
      ],
    );
  }
}
