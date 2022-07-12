import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_firebase/screens/authenticate/loginpage.dart';
import 'package:tugas_firebase/screens/authenticate/signuppage.dart';

class authpage extends StatefulWidget {
  const authpage({Key? key}) : super(key: key);

  @override
  State<authpage> createState() => _autpageState();
}

class _autpageState extends State<authpage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return isLogin
        ? loginpage(onClickedSignUp: toggle)
        : signuppage(onClickedSignIn: toggle);
  }

  void toggle() => setState(() => isLogin = !isLogin);
}
