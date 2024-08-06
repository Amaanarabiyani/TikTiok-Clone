import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/constant.dart';
import 'package:tiktok/view/screens/auth/signup_screen.dart';
import 'package:tiktok/view/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "TikTok Clone",
              style: TextStyle(
                color: buttonColor,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          // SizedBox(
          //   height: 15,
          // ),
          // Container(
          //   child: Text(
          //     "Login ",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 25,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
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
              isobsucre: true,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: InkWell(
              onTap: () {
                print("Button Pressed");
              },
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont\'t have an account? ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.off(() => SignupScreen());
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
