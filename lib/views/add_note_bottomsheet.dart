import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? description;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomTextField(text: "Title", onsaved: (value) => title = value),
          SizedBox(height: 16),
          CustomTextField(
            text: "description",
            maxLines: 5,
            onsaved: (value) => description = value,
          ),
          SizedBox(height: 100),
          CustomBottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                print(title);
                print(description);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
