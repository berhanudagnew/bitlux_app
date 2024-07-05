import 'package:flutter/material.dart';
import 'package:bitlux_app/core/constants/sizes.dart';

class CustumSearchBar extends StatelessWidget {
  final pink = const Color(0xFFFACCCC);
  final grey = const Color(0xFFF2F2F7);

  const CustumSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.55,
      height: MediaQuery.of(context).size.width * 0.10,
      child: TextFormField(
        style: const TextStyle(
            color: Colors.black, fontSize: BitLuxSizes.fontSizeMd),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5.0),
          filled: true,
          fillColor: Colors.white,
          focusColor: pink,
          focusedBorder: _border(pink),
          border: _border(grey),
          enabledBorder: _border(grey),
          hintText: 'symbol search',
          // labelText: 'symbol',
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          // contentPadding: const EdgeInsets.symmetric(vertical: 20),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(BitLuxSizes.sm),
      );
}
