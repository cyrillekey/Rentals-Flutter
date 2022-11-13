import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "ChekiKeja",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
          decoration: InputDecoration(
              suffix: Container(
                width: 40,
                decoration: const BoxDecoration(border: Border()),
              ),
              constraints: const BoxConstraints(maxHeight: 55),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(14))),
        )
      ],
    );
  }
}
