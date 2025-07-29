import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomTextField(text: "Title"),
            SizedBox(height: 16),
            CustomTextField(text: "description", maxLines: 5),
            SizedBox(height: 100),
            CustomBottom(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
