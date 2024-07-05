import 'package:bitlux_app/core/common/styles/border_radious_style.dart';
import 'package:bitlux_app/core/common/widgets/card/bitlux_round_card.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:bitlux_app/features/balance/presentation/providers/balance_board_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BalanceBoard extends StatelessWidget {
  const BalanceBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BitLuxRoundCard(
        margin: const EdgeInsets.symmetric(vertical: 0),
        padding: const EdgeInsets.all(BitLuxSizes.md),
        width: double.infinity,
        backgroundColor: BitLuxColors.primary,
        borderRadius: BitLuxBorderRadius(
                BitLuxSizes.md, BitLuxSizes.md, BitLuxSizes.xs, BitLuxSizes.xs)
            .borderRadius,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfolio',
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: BitLuxSizes.fontSizeLg),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'spot balance USDT',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        color: BitLuxColors.textSecondary,
                        fontSize: BitLuxSizes.fontSizeSm),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'trade balance BNB',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        color: BitLuxColors.textSecondary,
                        fontSize: BitLuxSizes.fontSizeSm),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '\$${Provider.of<BalanceBoardProvider>(context).spotBalanceUSDT.toStringAsFixed(2)}',
                    style: GoogleFonts.roboto(
                        color: Colors.white, fontSize: BitLuxSizes.fontSizeLg),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '\$${Provider.of<BalanceBoardProvider>(context).spotBalanceBNB.toStringAsFixed(2)}',
                    style: GoogleFonts.roboto(
                        color: Colors.white, fontSize: BitLuxSizes.fontSizeLg),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Today\'s PNL',
              style: GoogleFonts.roboto(
                  color: BitLuxColors.textSecondary,
                  fontSize: BitLuxSizes.fontSizeSm),
            ),
            Row(
              children: [
                Text(
                  '+${Provider.of<BalanceBoardProvider>(context).todayPNL_USDT.toStringAsFixed(2)}',
                  style: GoogleFonts.roboto(
                      color: Colors.white, fontSize: BitLuxSizes.fontSizeLg),
                ),
                Text(
                  '(+${Provider.of<BalanceBoardProvider>(context).todayPNL_percent.toStringAsFixed(2)}%)',
                  style: GoogleFonts.roboto(
                      color: Colors.white, fontSize: BitLuxSizes.fontSizeLg),
                ),
              ],
            ),
          ],
        ));
  }
}
