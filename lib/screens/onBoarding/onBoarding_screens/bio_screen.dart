import 'package:dating_app_bloc/widgets/custom_text_container.dart';
import 'package:dating_app_bloc/screens/onBoarding/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class BioGraphy extends StatelessWidget {
  final TabController tabController;

  const BioGraphy({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bioController = TextEditingController();
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
                text: 'Describe Yourself a Bit',
              ),
              CustomTextField(
                tabController: tabController,
                text: 'ENTER YOUR BIO',
                controller: bioController,
              ),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                tabController: tabController,
                text: 'What do you like?',
              ),
              FittedBox(
                child: Row(
                  children: [
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'MUSIC',
                    ),
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'ECONOMICS',
                    ),
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'RUNNING',
                    ),
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'READING',
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: Row(
                  children: [
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'NATURE',
                    ),
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'HIKING',
                    ),
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'SINGING',
                    ),
                    CustomTextContainer(
                      tabController: tabController,
                      text: 'POLITICS',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 5,
                selectedColor: Theme.of(context).primaryColor,
                unselectedColor: Theme.of(context).backgroundColor,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                tabController: tabController,
                text: "NEXT STEP",
              )
            ],
          ),
        ],
      ),
    );
  }
}
