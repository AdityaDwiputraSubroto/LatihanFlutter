import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class myaccounts extends StatefulWidget {
  const myaccounts({Key? key}) : super(key: key);

  @override
  State<myaccounts> createState() => _myaccountState();
}

class _myaccountState extends State<myaccounts> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Signed in as",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(user.email!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  child: Text("Sign Out"),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
