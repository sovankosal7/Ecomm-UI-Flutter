import 'package:ecommerce/UI/password_screen.dart';
import 'package:ecommerce/constant/image.dart';
import 'package:ecommerce/widgets/button_cus.dart';
import 'package:ecommerce/widgets/text_form_cus.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: 0, left: 0, child: Image.asset(login01)),
            Positioned(top: 0, left: 0, child: Image.asset(login02)),
            Positioned(top: 270, right: 0, child: Image.asset(login03)),
            Positioned(bottom: 0, right: 0, child: Image.asset(login04)),
            ListView(
              padding: EdgeInsets.symmetric(vertical: 180, horizontal: 30),
              children: [
                SizedBox(height: 330),
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 52),
                ),
                Row(
                  children: [
                    Text(
                      "Good to see you back!",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 19,
                      ),
                    ),
                    Icon(Icons.favorite),
                  ],
                ),
                SizedBox(height: 20),
                TextFormCus(hintText: "Email"),
                SizedBox(height: 12),
                ButtonCus(
                  buttonName: "Next",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PasswordScreen()),
                    );
                  },
                ),
                SizedBox(height: 12),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "cancel",
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
