import 'package:dating_app_bloc/bloc/swipe/swipe_bloc.dart';
import 'package:dating_app_bloc/config/app_router.dart';
import 'package:dating_app_bloc/config/theme.dart';
import 'package:dating_app_bloc/models/model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:dating_app_bloc/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SwipeBloc()..add(LoadUsersEvent(users: User.users)),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Date me please',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: OnBoardingScreen.routeName,
      ),
    );
  }
}
