import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BitLuxBottomNavBar extends StatefulWidget {
  final int pageIndex;
  final Function(int) onTap;

  const BitLuxBottomNavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  State<BitLuxBottomNavBar> createState() => _BitLuxBottomNavBarState();
}

class _BitLuxBottomNavBarState extends State<BitLuxBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: BitLuxSizes.sm,
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: BitLuxColors.secondary,
      child: Container(
        padding: const EdgeInsets.all(BitLuxSizes.zero),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navItem(
              Icons.home_outlined,
              widget.pageIndex == 0,
              'Home',
              onTap: () => widget.onTap(0),
            ),
            navItem(
              Icons.candlestick_chart_outlined,
              widget.pageIndex == 1,
              'Markets',
              onTap: () => widget.onTap(1),
            ),
            const Spacer(),
            navItem(
              Icons.currency_exchange_outlined,
              widget.pageIndex == 2,
              'Convert',
              onTap: () => widget.onTap(2),
            ),
            navItem(
              Icons.account_balance_wallet_outlined,
              widget.pageIndex == 3,
              'Wallets',
              onTap: () => widget.onTap(3),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem(
    IconData icon,
    bool selected,
    String text, {
    Function()? onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: selected ? BitLuxColors.light : BitLuxColors.accent,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: BitLuxSizes.fontSizeSm,
                color: selected ? BitLuxColors.light : BitLuxColors.accent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
