import 'package:dating_app_bloc/screens/onBoarding/onBoarding_screens/pictures_screen.dart';
import 'package:dating_app_bloc/screens/onBoarding/onBoarding_screens/screen.dart';
import 'package:dating_app_bloc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = '/onBoard';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => OnBoardingScreen());
  }

  static const List<Tab> tabs = <Tab>[
    Tab(
      text: 'Start',
    ),
    Tab(
      text: 'Email',
    ),
    Tab(
      text: 'Email Verification',
    ),
    Tab(
      text: 'Demo',
    ),
    Tab(
      text: 'Pictures',
    ),
    Tab(
      text: 'Bio',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });
          return Scaffold(
            appBar: CustomAppBar(
              title: "DATE ME",
              hasActions: false,
            ),
            body: TabBarView(
              children: [
                Start(tabController: tabController),
                Email(tabController: tabController),
                EmailVerificaion(tabController: tabController),
                Demo(tabController: tabController),
                Pictures(tabController: tabController),
                BioGraphy(tabController: tabController),
              ],
            ),
          );
        },
      ),
    );
  }
}
