import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/features/new_order/presentation/pages/add_new_order_page.dart';
import 'package:flutter/material.dart';

class AddNewOrderFloatingActionButton extends StatelessWidget {
  const AddNewOrderFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 64,
      width: 64,
      child: FloatingActionButton(
        backgroundColor: BitLuxColors.secondary,
        elevation: 0,
        onPressed: () => {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddNewOrderPage(),
            ),
          ),
        },
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 4, color: BitLuxColors.buttonGold),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          Icons.add,
          color: BitLuxColors.buttonGold,
        ),
      ),
    );
  }
}
