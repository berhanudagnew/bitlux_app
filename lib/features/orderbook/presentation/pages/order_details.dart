import 'package:bitlux_app/core/common/widgets/containers/rounded_container.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('price',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('\$69427.921',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('24h',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('24%', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('side',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('Buy', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('type',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('limit', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('expire',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('GTC', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
            ])),
        const Expanded(
          flex: 1,
          child: BitLuxRoundedContainer(
            margin: EdgeInsets.all(BitLuxSizes.xs),
            child: Image(
              alignment: Alignment.center,
              image: AssetImage('assets/images/green_line_chart.png'),
            ),
          ),
        ),

        Expanded(
            flex: 2,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('reisk limit',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('24.53%',
                      style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('quantity',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('12', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('time-l',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('1/m', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('daily PL',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('7%', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('daily PL',
                      style: GoogleFonts.roboto(
                          color: BitLuxColors.textSecondary)),
                  Text('\$24', style: GoogleFonts.roboto(color: Colors.white)),
                ],
              ),
            ])),

        // Divider(color: Colors.grey),
      ],
    );
  }
}
