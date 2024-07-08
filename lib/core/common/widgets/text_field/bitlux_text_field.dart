import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';

class BitLuxTextField extends StatefulWidget {
  final String textLabel;
  final String textSuffix;

  final Color inputColor;
  final Color hintColor;
  final TextInputType inputType;
  final TextEditingController controller;
  final Color fillColor;
  final String? Function(String?)? validator; // Added validator function
  final void Function(String?)? onSaved;

  const BitLuxTextField({
    super.key,
    required this.textLabel,
    required this.textSuffix,
    required this.inputColor,
    required this.hintColor,
    required this.inputType,
    required this.controller,
    required this.fillColor,
    this.validator, // Validator function parameter
    this.onSaved,
  });

  @override
  State<BitLuxTextField> createState() => _BitLuxTextFieldState();
}

class _BitLuxTextFieldState extends State<BitLuxTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.10,
      child: TextFormField(
        // Changed from TextField to TextFormField
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          filled: true,
          fillColor: widget.fillColor,
          focusColor: BitLuxColors.buttonGold,
          focusedBorder: _border(BitLuxColors.accent),
          labelText: widget.textLabel,
          labelStyle: GoogleFonts.roboto(
            color: widget.hintColor,
            fontSize: BitLuxSizes.fontSizeSm,
          ),
          
          suffixText: widget.textSuffix,
          suffixStyle: GoogleFonts.roboto(
            color: widget.hintColor,
            fontSize: BitLuxSizes.fontSizeSm,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(BitLuxSizes.xs),
          ),
        ),
        controller: widget.controller,
        cursorColor: BitLuxColors.buttonGold,
        textAlignVertical: TextAlignVertical.center,
        style: GoogleFonts.roboto(
          color: widget.inputColor,
          fontSize: BitLuxSizes.fontSizeSm,
        ),
        keyboardType: widget.inputType,
        validator: widget.validator,
        onSaved: widget.onSaved, // onSaved callback passed from constructor
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(BitLuxSizes.sm),
      );
}
