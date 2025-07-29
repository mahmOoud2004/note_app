import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appBar.dart';

class NoteviewBody extends StatelessWidget {
  const NoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 50), CustomAppbar()]);
  }
}
