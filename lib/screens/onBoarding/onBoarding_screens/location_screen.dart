import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  final TabController tavController;

  const Location({
    Key? key,
    required this.tavController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(),
    );
  }
}
