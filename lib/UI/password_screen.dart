import 'package:ecommerce/UI/password_type_screen.dart';
import 'package:ecommerce/constant/color.dart';
import 'package:ecommerce/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 28,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

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
                  MaterialPageRoute(builder: (context) => PasswordTypeScreen()),
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
                  children: const [
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
                  ],
                ),
                SizedBox(height: 12),

                // PIN INPUT
                Pinput(
                  defaultPinTheme: defaultPinTheme,
                  //submittedPinTheme: submittedPinTheme,
                  validator: (s) {
                    return s == '2222' ? null : 'Pin is incorrect';
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:ecommerce/constant/color.dart';
// import 'package:ecommerce/constant/image.dart';
// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';
//
// class PasswordScreen extends StatefulWidget {
//   PasswordScreen({super.key});
//   final defaultPinTheme = PinTheme(
//     width: 56,
//     height: 56,
//     textStyle: TextStyle(
//       fontSize: 28,
//       color: Color.fromRGBO(30, 60, 87, 1),
//       fontWeight: FontWeight.w600,
//     ),
//     decoration: BoxDecoration(
//       border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
//       borderRadius: BorderRadius.circular(20),
//     ),
//   );
//
//   @override
//   State<PasswordScreen> createState() => _PasswordScreenState();
// }
//
// class _PasswordScreenState extends State<PasswordScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: Stack(
//           children: [
//             Positioned(top: 0, left: 0, child: Image.asset(login01)),
//             Positioned(top: 0, left: 0, child: Image.asset(login02)),
//             ListView(
//               children: [
//                 SizedBox(height: 130),
//                 Container(
//                   height: 120,
//                   width: 120,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: white,
//                     boxShadow: [
//                       BoxShadow(color: Colors.black12, blurRadius: 24),
//                     ],
//                   ),
//                   child: Center(
//                     child: Container(
//                       height: 100,
//                       width: 100,
//                       decoration: BoxDecoration(shape: BoxShape.circle),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(50),
//                         child: Image.network(
//                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&s",
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 30),
//                     Text(
//                       "Hello Romina!!",
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 30),
//                     Text("Type your password", style: TextStyle(fontSize: 19)),
//                   ],
//                 ),
//                 SizedBox(height: 12),
//                 Pinput(defaultPinTheme: defaultPinTheme),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
