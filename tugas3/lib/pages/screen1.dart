import 'package:flutter/material.dart';
import 'package:tugas3/pages/screen2.dart';
import 'package:tugas3/pages/screen3.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    //MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Belajar Flutter"),
      ),*/
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50, bottom: 25),
                //padding: EdgeInsets.all(1),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                //color: Colors.green,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 26),
              child: Image(
                image: AssetImage("asset/Logo.png"),
                width: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 270,
                height: 46,
                child: TextField(
                  style: TextStyle(height: 0.01),
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                    )),
                  ),
                ),
              ),
            ),
            Container(
              child: SizedBox(
                width: 270,
                height: 46,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(height: 0.01),
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                    )),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return masuk();
                      },
                    ));
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"),
                TextButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return daftar();
                        },
                      ));
                    },
                    child: Text("Daftar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
