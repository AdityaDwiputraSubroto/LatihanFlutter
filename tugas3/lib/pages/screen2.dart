import 'package:flutter/material.dart';

class daftar extends StatefulWidget {
  const daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50, bottom: 25),
                //padding: EdgeInsets.all(1),
                child: Text(
                  "Daftar",
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
                    hintText: "Nama",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                    )),
                  ),
                ),
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
                  child: Text("Daftar"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun?"),
                TextButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      Navigator.pop(context);
                    },
                    child: Text("Login")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
