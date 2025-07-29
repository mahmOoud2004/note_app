import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appBar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppbar(title: "Edit Note", icon: Icons.done),
            SizedBox(height: 16),
            CustomTextField(text: "Title"),
            SizedBox(height: 16),
            CustomTextField(text: "Description", maxLines: 5),
          ],
        ),
      ),
    );
  }
}
