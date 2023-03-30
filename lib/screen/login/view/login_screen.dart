import 'package:flutter/material.dart';
import 'package:ott/utils/shr.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    Text("Sing in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
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
                      onTap: () async {
                        Shr shr=Shr();
                        Map m1 = await shr.readshr();
                        if(m1['e1']==email.text&&m1['p1']==pass.text)
                          {
                            Navigator.pushNamed(context, 'home');
                            shr.setshe(email.text, pass.text, true);
                          }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter vaild email & password")));
                          }
                        },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        alignment: Alignment.center,
                        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                      ),
                    ),
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, 'singup');
                    }, child: Text('New user? Sing up',style: TextStyle(color: Colors.black),))
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
