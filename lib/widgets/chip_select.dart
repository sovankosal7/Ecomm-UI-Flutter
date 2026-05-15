import 'package:ecommerce/constant/color.dart';
import 'package:flutter/material.dart';

class ChipSelect extends StatelessWidget {
  const ChipSelect({
    super.key,
    this.isSelected = true,
    this.chipColor = mainColor,
    this.chipLabel = "N/A",
  });
  final bool isSelected;
  final Color chipColor;
  final String chipLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 90),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: chipColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        // spacing: 30,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 30, height: 30),
          Text(
            chipLabel,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: chipColor,
            ),
          ),
          checkChip(),
        ],
      ),
    );
  }

  Widget checkChip() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(shape: BoxShape.circle, color: white),
      child: isSelected
          ? Icon(Icons.check_circle, size: 28, color: chipColor)
          : Icon(Icons.circle, size: 28, color: chipColor),
    );
  }
}
