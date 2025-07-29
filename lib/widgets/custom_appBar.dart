import 'package:flutter/material.dart';
import 'package:note_app/widgets/customsearch_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
      child: Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          CustomsearchIcon(),
        ],
      ),
    );
  }
}
