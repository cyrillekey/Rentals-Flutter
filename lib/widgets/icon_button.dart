import 'package:flutter/material.dart';

Widget iconButton(void Function()? onPressed, IconData iconData, String label) {
  return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(const Size(160, 50)),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            iconData,
            size: 30,
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ));
}
