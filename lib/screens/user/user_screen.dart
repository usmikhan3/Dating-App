import 'package:dating_app_bloc/models/model.dart';
import 'package:dating_app_bloc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';

  static Route route({required User user}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => UsersScreen(user: user),
    );
  }

  final User user;
  const UsersScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: Theme.of(context).iconTheme,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Hero(
                      tag: 'user_image',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: NetworkImage(user.imgUrls[0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ChoiceButton(
                            color: Theme.of(context).primaryColor,
                            height: 60,
                            width: 60,
                            hasGradient: false,
                            icon: Icons.clear_rounded,
                            size: 25,
                          ),
                          ChoiceButton(
                            color: Colors.white,
                            height: 80,
                            width: 80,
                            hasGradient: true,
                            icon: Icons.favorite,
                            size: 30,
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${user.name}, ${user.age}",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "${user.jobTitle}",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "About",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "${user.bio}",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Interest",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Row(
                      children: user.interests
                          .map(
                            (interest) => Container(
                              padding: const EdgeInsets.all(5.0),
                              margin: const EdgeInsets.only(top: 5.0, right: 5),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Theme.of(context).primaryColor,
                                Theme.of(context).accentColor
                              ])),
                              child: Text(
                                interest,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                          .toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
