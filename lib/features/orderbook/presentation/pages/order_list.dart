import 'package:bitlux_app/core/common/styles/border_radious_style.dart';
import 'package:bitlux_app/core/common/widgets/card/bitlux_round_card.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:bitlux_app/features/orderbook/presentation/pages/order_details.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BitLuxRoundCard(
      margin: const EdgeInsets.symmetric(vertical: BitLuxSizes.xs),
      padding: const EdgeInsets.all(0.0),
      // backgroundColor: Colors.red,
      borderRadius: BitLuxBorderRadius(
              BitLuxSizes.md, BitLuxSizes.md, BitLuxSizes.md, BitLuxSizes.md)
          .borderRadius,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
// Order Symbol and Time
          BitLuxRoundCard(
            borderRadius:
                BitLuxBorderRadius(BitLuxSizes.md, BitLuxSizes.md, 0, 0)
                    .borderRadius,
            backgroundColor: BitLuxColors.primary,
            // margin: EdgeInsets.symmetric(vertical: BitLuxSizes.xs),
            padding: const EdgeInsets.all(BitLuxSizes.sm),
            width: double.infinity,
            // height: 50,
            child: Column(
              children: [
                Text(
                  'BTC/USDT',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: BitLuxSizes.md,
                      fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 10),
                Text('2:48:11 - 02/12/2024',
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.roboto(color: BitLuxColors.textSecondary)),
                // Divider(color: Colors.grey),
              ],
            ),
          ),

          // BitLuxDividerStyle(),

// Order Details
          BitLuxRoundCard(
            showBorder: false,
            borderRadius: BitLuxBorderRadius(0, 0, 0, 0).borderRadius,
            backgroundColor: BitLuxColors.secondary,
            padding: const EdgeInsets.all(BitLuxSizes.sm),
            width: double.infinity,
            // height: 200,
            child: const OrderDetails(),
          ),

          // BitLuxDividerStyle(),

// Buy SellButtons
          BitLuxRoundCard(
            borderRadius:
                BitLuxBorderRadius(0, 0, BitLuxSizes.md, BitLuxSizes.md)
                    .borderRadius,
            backgroundColor: BitLuxColors.primary,
            // margin: EdgeInsets.symmetric(vertical: BitLuxSizes.xs),
            padding: const EdgeInsets.all(BitLuxSizes.sm),
            width: double.infinity,
            // height: 50,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      print('Another Button Pressed!');
                    },
                    child: BitLuxRoundCard(
                      borderRadius: BitLuxBorderRadius(BitLuxSizes.sm,
                              BitLuxSizes.sm, BitLuxSizes.sm, BitLuxSizes.sm)
                          .borderRadius,
                      margin: const EdgeInsets.symmetric(
                          horizontal: BitLuxSizes.sm),
                      backgroundColor: BitLuxColors.buttonGreen,
                      padding: const EdgeInsets.all(BitLuxSizes.xs),
                      child: Text(
                        'Buy',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: BitLuxColors.light,
                          fontSize: BitLuxSizes.fontSizeMd,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // padding: EdgeInsets.all(16.0),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      print('Another Button Pressed!');
                    },
                    child: BitLuxRoundCard(
                      borderRadius: BitLuxBorderRadius(BitLuxSizes.sm,
                              BitLuxSizes.sm, BitLuxSizes.sm, BitLuxSizes.sm)
                          .borderRadius,
                      margin: const EdgeInsets.symmetric(
                          horizontal: BitLuxSizes.sm),
                      backgroundColor: BitLuxColors.buttonRed,
                      padding: const EdgeInsets.all(BitLuxSizes.xs),
                      child: Text(
                        'SELL',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: BitLuxColors.light,
                          fontSize: BitLuxSizes.fontSizeMd,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // padding: EdgeInsets.all(16.0),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      print('Another Button Pressed!');
                    },
                    child: BitLuxRoundCard(
                      borderRadius: BitLuxBorderRadius(BitLuxSizes.sm,
                              BitLuxSizes.sm, BitLuxSizes.sm, BitLuxSizes.sm)
                          .borderRadius,
                      margin: const EdgeInsets.symmetric(
                          horizontal: BitLuxSizes.sm),
                      backgroundColor: BitLuxColors.buttonGold,
                      padding: const EdgeInsets.all(BitLuxSizes.xs),
                      child: Text(
                        'more',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: BitLuxColors.primary,
                          fontSize: BitLuxSizes.fontSizeMd,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // padding: EdgeInsets.all(16.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
