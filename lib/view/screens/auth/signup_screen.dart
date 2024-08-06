import 'package:flutter/material.dart';
import 'package:tiktok/constant.dart';
import 'package:tiktok/view/widgets/text_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _usernamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "TikTok Clone",
                style: TextStyle(
                  color: buttonColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: InputField(
                controller: _usernamecontroller,
                LabelText: "Username",
                icon: Icons.person,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: InputField(
                controller: _emailcontroller,
                LabelText: "Email",
                icon: Icons.email,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: InputField(
                controller: _passwordcontroller,
                LabelText: "Password",
                icon: Icons.lock,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
