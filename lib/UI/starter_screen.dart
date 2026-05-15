import 'package:ecommerce/UI/createAccount.dart';
import 'package:ecommerce/widgets/button_cus.dart';
import 'package:flutter/material.dart';

class starter_screen extends StatelessWidget {
  const starter_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 134,
              width: 134,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 8,
                    spreadRadius: 3,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 8,
                    spreadRadius: 3,
                  ),
                ],
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset("assets/images/shopbag.png"),
            ),

            Text(
              "Shoppe",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 52),
            ),
            SizedBox(height: 30),
            Text(
              "Beautiful eCommerce UI kit\n for your online store",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 19),
            ),
            SizedBox(height: 70),
            ButtonCus(
              buttonName: "Let's get start",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => createAccount()),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I've already have an account",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0xff004cff),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
