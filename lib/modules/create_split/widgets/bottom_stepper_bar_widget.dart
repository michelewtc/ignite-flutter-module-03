import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onTapCancel;
  final VoidCallback onTapNext;
  const BottomStepperBarWidget(
      {Key? key, required this.onTapNext, required this.onTapCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: [
          // Row(
          //   children: [Expanded(child: Divider())],
          // ),
          Row(
            children: [
              StepperNextButtonWidget(label: "Cancelar", onTap: onTapCancel),
              Container(
                width: 1,
                height: 60,
                color: AppTheme.colors.divider,
              ),
              StepperNextButtonWidget(label: "Continuar", onTap: onTapNext),
            ],
          ),
        ],
      ),
    );
  }
}
