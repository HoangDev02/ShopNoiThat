import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

import '../model/user.dart';
import '../service/auth.dart';


class UserProvider with ChangeNotifier {

  User? user = null;
  List<User> list_user = [];

  void getUsers() async{
    print("USER");
    final dio = Dio(); // Provide a dio instance
    dio.options.headers["Demo-Header"] = "demo header"; // config your dio headers globally
    final client = RestLoginAuth(dio);
    await client.getUsers().then((it) => {
      print(it),
      list_user = it
    });
    notifyListeners();
  }

  bool login(User userLogin){
    bool _isLoginSuccess = false;

    if(userLogin.password!.isEmpty && userLogin.email!.isEmpty){
      return false;
    }

    for(User u in list_user){
      if(u.email == userLogin.email && u.password == userLogin.password){
        _isLoginSuccess = true;
        user = u;
        break;
      }
    }
    return _isLoginSuccess;
  }

  Future register(User newUser) async{
    bool _isLoginSuccess = true;

    if(newUser.password!.isEmpty && newUser.email!.isEmpty){
      return false;
    }

    for(User user in list_user){
      if(user.email == newUser.email){
        _isLoginSuccess = false;
        break;
      }
    }

    if(_isLoginSuccess){
      final dio = Dio(); // Provide a dio instance
      dio.options.headers["Demo-Header"] =
      "demo header"; // config your dio headers globally
      final client = RestLoginAuth(dio);
      await client
          .registerAuth(newUser)
          .then((it)=>{
        user = it,
        _isLoginSuccess = true

      });
    }
    notifyListeners();
    return _isLoginSuccess;
  }

  void logout() {
    user = null;
    notifyListeners();
  }

}
