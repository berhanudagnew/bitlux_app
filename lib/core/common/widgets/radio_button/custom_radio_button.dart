import 'package:flutter/material.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';

class CustomRadioButtons extends StatefulWidget {
  final List<String> options;
  final Function(int) onSelected;

  const CustomRadioButtons({
    super.key,
    required this.options,
    required this.onSelected,
  });

  @override
  _CustomRadioButtonsState createState() => _CustomRadioButtonsState();
}

class _CustomRadioButtonsState extends State<CustomRadioButtons> {
  int selectedButtonIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: widget.options.asMap().entries.map((entry) {
        int index = entry.key;
        String text = entry.value;
        return Padding(
          padding: const EdgeInsets.only(right: BitLuxSizes.md),
          child: radioButton(index, text),
        );
      }).toList(),
    );
  }

  Widget radioButton(int index, String text) {
    bool isSelected = selectedButtonIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          selectedButtonIndex = index;
        });
        widget.onSelected(index);
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? BitLuxColors.light : Colors.white,
          border: Border.all(
            color: isSelected ? BitLuxColors.buttonGold : BitLuxColors.light,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: BitLuxSizes.md, vertical: BitLuxSizes.zero),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? BitLuxColors.primary : BitLuxColors.accent,
          ),
        ),
      ),
    );
  }
}
