import 'package:bitlux_app/core/common/styles/border_radious_style.dart';
import 'package:bitlux_app/core/common/styles/text_style.dart';
import 'package:bitlux_app/core/common/widgets/card/bitlux_round_card.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomErrorWidgetPage extends StatelessWidget {
  final String errorMessage;

  const CustomErrorWidgetPage({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return DecoratedBox(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/images/background_image.png',
        ),
        fit: BoxFit.cover,
      )),
      child: Column(
        children: [
          SizedBox(height: devHeight * 0.2),
          Icon(
            Icons.error_outline,
            color: Colors.red,
            size: devWidth * 0.4,
          ),
          SizedBox(height: devHeight * 0.1),
          Text(
            'Error Occurred!',
            style: kTitleTextStyle,
          ),
          SizedBox(height: devHeight * 0.05),
          Container(
            padding: const EdgeInsets.all(BitLuxSizes.md),
            child: Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: kSubtitleTextStyle,
            ),
          ),
          SizedBox(height: devHeight * 0.05),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: BitLuxRoundCard(
              borderRadius: BitLuxBorderRadius(BitLuxSizes.sm, BitLuxSizes.sm,
                      BitLuxSizes.sm, BitLuxSizes.sm)
                  .borderRadius,
              margin: const EdgeInsets.symmetric(horizontal: BitLuxSizes.sm),
              backgroundColor: BitLuxColors.buttonRed,
              padding: const EdgeInsets.all(BitLuxSizes.xs),
              child: Text(
                'Go Back',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
