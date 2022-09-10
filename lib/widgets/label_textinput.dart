import 'package:flutter/material.dart';

Widget labelTextInput(String label, TextEditingController controller,
    {double? width,
    TextInputType textInputType = TextInputType.text,
    String? Function(String?)? validator,
    bool obscureTexxt = false,
    Widget? suffix}) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 20,
            top: 10,
          ),
          child: Text(
            label,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20),
          width: width,
          child: TextFormField(
            obscureText: obscureTexxt,
            controller: controller,
            keyboardType: textInputType,
            validator: validator,
            decoration: InputDecoration(
              suffix: suffix,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(),
            ),
          ),
        )
      ],
    ),
  );
}
