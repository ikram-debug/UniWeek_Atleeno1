import 'package:flutter/material.dart';

import '../Constants/App_Colors.dart';
import '../Constants/App_Sizes.dart';
import '../Constants/App_Style.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final bool isEyeTrue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
    this.isEyeTrue = false,
    this.controller,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscure,
      validator: widget.validator,

      style: AppTextStyle.input, // TEXT INPUT STYLE

      decoration: InputDecoration(
        hintText: widget.hintText,

        /// Hint text should be black now
        hintStyle: TextStyle(
          color: kblackcolor, // BLACK HINT TEXT
          fontSize: AppSizes.sp(14),
        ),

        floatingLabelBehavior: FloatingLabelBehavior.always,

        /// Grey background
        filled: true,
        fillColor: Colors.grey.shade200, // LIGHT GREY

        isDense: true,

        prefixIcon: Icon(
          widget.prefixIcon,
          color: kbluecolor, // Blue icon looks better with grey
        ),

        suffixIcon: widget.isEyeTrue
            ? IconButton(
          icon: Icon(
            _isObscure ? Icons.visibility_off : Icons.visibility,
            color: kbluecolor, // Blue icon
          ),
          onPressed: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          },
        )
            : null,

        // Normal border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.wp(2)),
          borderSide: BorderSide(color: kbluecolor, width: 1.3),
        ),

        // Enabled border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.wp(2)),
          borderSide: BorderSide(color: kbluecolor),
        ),

        // Focused border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.wp(2)),
          borderSide: BorderSide(color: kbluecolor, width: 1.5),
        ),

        // Error border (still needed)
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.wp(2)),
          borderSide: BorderSide(color: errortcolor),
        ),

        // Focused + error border
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.wp(2)),
          borderSide: BorderSide(color: errortcolor),
        ),

        /// Error text style
        errorStyle: AppTextStyle.error,
      ),
    );
  }
}
