import 'package:bitlux_app/features/new_order/presentation/providers/slider_value_provider.dart';
import 'package:flutter/material.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPaint(
          // painter: SliderPainter(_sliderValue),
          child: Container(
            child: Slider(
              value: Provider.of<SliderValueProvider>(context).sliderValue,
              min: 0,
              max: 10,
              activeColor: BitLuxColors.buttonGold,
              inactiveColor: BitLuxColors.textField,
              divisions: 10,
              onChanged: (value) {
                Provider.of<SliderValueProvider>(context, listen: false)
                    .changeSliderValue(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
