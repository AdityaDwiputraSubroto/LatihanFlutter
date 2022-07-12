import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tugas_firebase/main.dart';
import 'package:tugas_firebase/screens/authenticate/signuppage.dart';
import 'package:tugas_firebase/screens/home/page1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tugas_firebase/Error/errorN.dart';

class loginpage extends StatefulWidget {
  final Function() onClickedSignUp;
  const loginpage({Key? key, required this.onClickedSignUp}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Future signin() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e);
      ErrorN.showsnackbar(e.message);
    }
    navigatorkey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Email"),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return "Enter the correct Email";
                      } else {
                        setState(() {
                          email = value;
                        });
                        ;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter the correct Password";
                      } else {
                        setState(() {
                          password = value;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        child: Text("Sign In"),
                        onPressed: () async {
                          // dynamic result = await _auth.signinAnon();
                          if (_formkey.currentState!.validate()) {
                            signin();

                            print('signed in');
                          }
                        }),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text("Don't have an account?"),
                  //     TextButton(
                  //         onPressed: (() {
                  //           widget.onClickedSignUp;
                  //         }),
                  //         child: Text("Sign up")),
                  //   ],
                  // )
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = widget.onClickedSignUp,
                              text: 'Sign Up',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color:
                                      Theme.of(context).colorScheme.secondary))
                        ])),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
