import 'package:dating_app_bloc/bloc/swipe/swipe_bloc.dart';
import 'package:dating_app_bloc/models/model.dart';
import 'package:dating_app_bloc/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "DISCOVER",
      ),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                InkWell(
                  onDoubleTap: () {
                    Navigator.pushNamed(
                      context,
                      '/users',
                      arguments: state.users[0],
                    );
                  },
                  child: Draggable(
                    feedback: UserCard(user: state.users[0]),
                    child: UserCard(user: state.users[0]),
                    childWhenDragging: UserCard(user: state.users[1]),
                    onDragEnd: (drag) {
                      if (drag.velocity.pixelsPerSecond.dx < 0) {
                        context.read<SwipeBloc>()
                          ..add(
                            SwipeLeftEvent(user: state.users[0]),
                          );
                        print("Swiped Left");
                      } else {
                        context.read<SwipeBloc>()
                          ..add(
                            SwipeRightEvent(user: state.users[0]),
                          );
                        print("Swiped Right");
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(
                              SwipeLeftEvent(user: state.users[0]),
                            );
                        },
                        child: ChoiceButton(
                          color: Theme.of(context).primaryColor,
                          height: 60,
                          width: 60,
                          hasGradient: false,
                          icon: Icons.clear_rounded,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(
                              SwipeRightEvent(user: state.users[0]),
                            );
                        },
                        child: ChoiceButton(
                          color: Colors.white,
                          height: 80,
                          width: 80,
                          hasGradient: true,
                          icon: Icons.favorite,
                          size: 30,
                        ),
                      ),
                      ChoiceButton(
                        color: Theme.of(context).primaryColor,
                        height: 60,
                        width: 60,
                        hasGradient: false,
                        icon: Icons.watch_later,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Text("Something Went Wrong");
          }
        },
      ),
    );
  }
}
