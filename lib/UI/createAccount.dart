import 'package:dotted_border/dotted_border.dart';
import 'package:ecommerce/UI/login_screen.dart';
import 'package:ecommerce/constant/color.dart';
import 'package:ecommerce/constant/image.dart';
import 'package:ecommerce/widgets/button_cus.dart';
import 'package:flutter/material.dart';

import '../widgets/text_form_cus.dart';

class createAccount extends StatelessWidget {
  const createAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: 0, left: 0, child: Image.asset(greyBackground)),
            Positioned(top: 30, right: 0, child: Image.asset(blueBackground)),
            ListView(
              padding: EdgeInsets.all(10),
              children: [
                SizedBox(height: 100),
                Text(
                  "Create\nAccount",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
                ),
                _buildCameraImage(),
                SizedBox(height: 30),
                TextFormCus(hintText: "Email"),
                SizedBox(height: 8),
                TextFormCus(
                  hintText: "password",
                  suffix: Icon(Icons.visibility_off),
                ),
                SizedBox(height: 8),
                TextFormCus(
                  prefixIcon: _buildPrefix(),
                  hintText: "confirm password",
                ),
                SizedBox(height: 60),
                ButtonCus(
                  buttonName: "Done",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
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

  Widget _buildPrefix() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.asset(englandFlag),
          Icon(Icons.keyboard_arrow_down_outlined),
          Container(height: 24, color: Colors.black45, width: 1),
        ],
      ),
    );
  }

  Widget _buildCameraImage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: DottedBorder(
        options: CircularDottedBorderOptions(
          dashPattern: [10, 5],
          strokeWidth: 4,
          color: mainColor,
          padding: EdgeInsets.all(4),
        ),
        child: Icon(Icons.person, size: 64, color: mainColor),
      ),
    );
  }
}
