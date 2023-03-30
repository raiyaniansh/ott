import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/utils/shr.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(top: 135,child: Image.asset('assets/image/logopng.png',width: 375,)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 375,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text("Sing up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                    SizedBox(height: 25,),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          label: Text(
                            'Email',
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      controller: pass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          label: Text(
                            'Password',
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        Shr shr=Shr();
                        shr.setshe(email.text, pass.text, false);
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        alignment: Alignment.center,
                        child: Text("Sing up",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
