import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.text, this.maxLines});

  final String? text;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        labelText: '  $text' ?? 'Note',
        hintText: 'Type something...',
      ),
      maxLines: maxLines,
    );
  }
}
