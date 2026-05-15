import 'package:ecommerce/constant/color.dart';
import 'package:flutter/cupertino.dart';

class PasswordDot extends StatelessWidget {
  const PasswordDot({super.key, required this.fillCount, this.totalCount = 8});
  final int fillCount;
  final int totalCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: List.generate(totalCount, (index) {
        final isFilled = index < fillCount;
        return Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isFilled ? mainColor : greyColor,
          ),
        );
      }),
    );
  }
}
