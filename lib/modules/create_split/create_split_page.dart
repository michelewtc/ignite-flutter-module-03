import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_page.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_page.dart';
import 'package:split_it/modules/create_split/widgets/bottom_stepper_bar_widget.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  late List<Widget> pages;

  @override
  void initState() {
    pages = [
      StepOnePage(
        onChange: (value) {
          setState(() {
            controller.setEventName(value);
          });
        },
      ),
      StepTwoPage(),
      StepThreePage(),
    ];
    super.initState();
  }

  var index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBarWidget(
          onTapBack: backPage, actualPage: index, size: pages.length),
      body: pages[index],
      bottomNavigationBar: BottomStepperBarWidget(
        enabledButtons: controller.enableNavigateButton(),
        onTapCancel: () {},
        onTapNext: nextPage,
      ),
    );
  }
}
