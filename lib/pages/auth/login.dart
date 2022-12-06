
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopnoithat/pages/HomePages.dart';
import 'package:shopnoithat/pages/auth/register.dart';
import 'package:shopnoithat/pages/auth/social_icon.dart';

import '../../model/user.dart';
import '../../provider/user_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var checkedValue = false;

  void getUsers() async{
    print("Get users");
    context.read<UserProvider>().getUsers();
  }

  @override
  void initState()  {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {

    show(String text){
      return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('login'),
          content: Text('${text}'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }


    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Vui Lòng Nhập Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Vui lòng nhập email hợp lệ");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          prefixIcon: const Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          hintText: "Email",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black, width: 10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 2.0,
            ),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Mật Khẩu bắt buộc để đăng nhập");
          }
          if (!regex.hasMatch(value)) {
            return ("Nhập mật khẩu hợp lệ(Tối thiểu 6 kí tự)");
          }
          return null;
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(
            Icons.remove_red_eye,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 2.0,
            ),
          ),
        ));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.black,
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () async{
            bool checkLogin = context.read<UserProvider>().login(new User(email: emailController.text,password: passwordController.text));
            if(checkLogin){
              print("Login Success!!");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePages()),
              );
            }else{
              print("Login Failed!!");
              show("Login Failed!!");
            }
          },
          child: const Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 150,
                        child: Image.asset(
                          "assets/icons/logo.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.contain,
                        )),
                    Text(
                      "Login To Your Account",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
                    emailField,
                    const SizedBox(height: 25),
                    passwordField,
                    const SizedBox(height: 15),
                    CheckboxListTile(
                      activeColor: Colors.black,
                      title: Text(
                        "Remember me",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                    ),
                    const SizedBox(height: 15),
                    loginButton,
                    const SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //         const ForgotPassword()));
                            },
                            child: const Text(
                              "Forgot the password?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ]),
                    const SizedBox(height: 30),
                    Text(
                      "or continue with",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SocalIcon(
                          iconSrc: "assets/icons/facebook.svg",
                          press: () {},
                        ),
                        SocalIcon(
                          iconSrc: "assets/icons/google.svg",
                          press: () {},
                        ),
                        SocalIcon(
                          iconSrc: "assets/icons/apple.svg",
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Don't have an account? ", style: TextStyle(color: Colors.grey),),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()));
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ]),
                    const SizedBox(height: 20),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
