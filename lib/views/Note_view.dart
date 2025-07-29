import 'package:flutter/material.dart';
import 'package:note_app/widgets/noteview_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NoteviewBody());
  }
}
