import 'package:flutter/material.dart';

class CustomsearchIcon extends StatelessWidget {
  const CustomsearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(Icons.search, color: Colors.white, size: 30),
    );
  }
}
