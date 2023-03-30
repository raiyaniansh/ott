import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ott/utils/shr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () async {
      Shr shr =Shr();
      Map m1=await shr.readshr();
      if(m1['login']==true)
        {
          Navigator.pushReplacementNamed(context, 'home');
        }
      else
        {
          Navigator.pushReplacementNamed(context, 'login');
        }
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 250,),
              Image.asset('assets/image/logopng.png'),
              SizedBox(height: 250,),
              CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
