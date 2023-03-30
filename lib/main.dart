import 'package:flutter/material.dart';
import 'package:ott/screen/home/provider/home_provider.dart';
import 'package:ott/screen/home/view/home_screen.dart';
import 'package:ott/screen/login/view/login_screen.dart';
import 'package:ott/screen/player/view/player_screen.dart';
import 'package:ott/screen/singup/view/singup.dart';
import 'package:ott/screen/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => SplashScreen(),
          'login':(context) => LoginScreen(),
          'singup':(context) =>SingUp(),
          'home':(context) => HomeScreen(),
          'player':(context) => PlayerScreen(),
        },
      ),
    ),
  );
}
