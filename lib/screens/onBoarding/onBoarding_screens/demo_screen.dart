import 'package:dating_app_bloc/screens/onBoarding/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Demo extends StatelessWidget {
  final TabController tabController;

  const Demo({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                tabController: tabController,
                text: 'What\'s your Gender?',
              ),
              CustomCheckBox(tabController: tabController, text: "MALE"),
              CustomCheckBox(tabController: tabController, text: "FEMALE"),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                tabController: tabController,
                text: 'What\'s yyour Age?',
              ),
              CustomTextField(
                tabController: tabController,
                text: 'ENTER YOUR AGE',
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 3,
                selectedColor: Theme.of(context).primaryColor,
                unselectedColor: Theme.of(context).backgroundColor,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(tabController: tabController)
            ],
          ),
        ],
      ),
    );
  }
}
