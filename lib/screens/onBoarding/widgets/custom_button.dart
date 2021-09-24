import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomButton(
      {Key? key, required this.tabController, this.text = "START"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor
            ],
          )),
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(elevation: 0, primary: Colors.transparent),
        onPressed: () {
          tabController.animateTo(tabController.index + 1);
        },
        child: Container(
          width: double.infinity,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
