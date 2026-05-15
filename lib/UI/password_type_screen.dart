import 'package:ecommerce/UI/password_recovery.dart';
import 'package:ecommerce/constant/color.dart';
import 'package:ecommerce/constant/image.dart';
import 'package:ecommerce/widgets/password_dot.dart';
import 'package:flutter/material.dart';

class PasswordTypeScreen extends StatefulWidget {
  const PasswordTypeScreen({super.key});
  static const int pinLenht = 8;
  @override
  State<PasswordTypeScreen> createState() => _PasswordTypeScreenState();
}

class _PasswordTypeScreenState extends State<PasswordTypeScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Not you?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordRecovery()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Color(0xff004cff),
              ),
              child: Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        ),
      ],
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: 0, left: 0, child: Image.asset(login01)),
            Positioned(top: 0, left: 0, child: Image.asset(login02)),
            ListView(
              children: [
                const SizedBox(height: 130),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 24),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Hello Romina!!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text("Type your password", style: TextStyle(fontSize: 19)),
                    SizedBox(height: 16),
                    Stack(
                      children: [
                        PasswordDot(
                          fillCount: _controller.text.length,
                          totalCount: PasswordTypeScreen.pinLenht,
                        ),
                        TextField(controller: _controller, autofocus: true),
                      ],
                    ),
                    SizedBox(height: 40),
                    Opacity(opacity: 0, child: Text("Forgot your password?")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
