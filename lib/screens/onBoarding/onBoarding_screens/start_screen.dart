import 'package:dating_app_bloc/screens/onBoarding/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Start extends StatelessWidget {
  final TabController tabController;

  const Start({
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
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image(
                    image: AssetImage("assets/images/couple.png"),
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 50,
              ),
              Text(
                "Welcome Lover",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.normal,
                      height: 1.8,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          CustomButton(tabController: tabController)
        ],
      ),
    );
  }
}
