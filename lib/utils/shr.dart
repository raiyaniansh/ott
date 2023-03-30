import 'package:shared_preferences/shared_preferences.dart';

class Shr{
  Future<void> setshe(String email,String pass,bool islogin)
  async {
    final SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString('e1', email);
    shr.setString('p1', pass);
    shr.setBool('login', islogin);
  }

  Future<Map> readshr()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    String? email = shr.getString('e1');
    String? pass = shr.getString('p1');
    bool? login = shr.getBool('login');

    Map m1 = {'e1':email,'p1':pass,'login':login};
    return m1;
  }
}