import 'package:flutter/material.dart';

class MatchesSreen extends StatelessWidget {
  static const String routeName = '/matches';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => MatchesSreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
