import 'package:ecommerce/constant/color.dart';
import 'package:ecommerce/constant/image.dart';
import 'package:ecommerce/widgets/chip_select.dart';
import 'package:flutter/material.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Positioned(top: 0, right: 0, child: Image.asset(psregray)),
            Positioned(top: 0, right: 0, child: Image.asset(psreblue)),
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
                    SizedBox(height: 25),
                    Text(
                      "Password Recovery",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "How you would like to restore\nyour password",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ChipSelect(
                      isSelected: true,
                      chipLabel: "SMS",
                      chipColor: mainColor,
                    ),
                    SizedBox(height: 10),
                    ChipSelect(
                      isSelected: false,
                      chipLabel: "Email",
                      chipColor: orangeColor,
                    ),
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
