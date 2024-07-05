import 'package:google_fonts/google_fonts.dart';
import 'package:bitlux_app/core/common/styles/divider_style.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'background_wave.dart';
import '../search_bar/custum_search_bar.dart';
import 'package:flutter/material.dart';

class BitLuxSearchAppBar extends SliverPersistentHeaderDelegate {
  const BitLuxSearchAppBar();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.3;
    double topPadding = MediaQuery.of(context).padding.top + BitLuxSizes.sm;

    return Stack(
      children: [
        const BackgroundWave(
          height: 280,
        ),
        Positioned(
          top: topPadding + offset,
          left: BitLuxSizes.sm,
          right: BitLuxSizes.sm,
          child: Column(
            children: [
              const BitLuxDividerStyle(
                color: BitLuxColors.secondary,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'BTC/USDT',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '64678.097',
                        style:
                            GoogleFonts.roboto(color: BitLuxColors.buttonGreen),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: BitLuxSizes.sm,
                  ),
                  const CustumSearchBar(),
                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
              const BitLuxDividerStyle(
                color: BitLuxColors.secondary,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => 160;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
