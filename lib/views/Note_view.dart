import 'package:flutter/material.dart';
import 'package:note_app/views/add_note_bottomsheet.dart';
import 'package:note_app/widgets/noteview_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteviewBody(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomsheet();
            },
          );
        },
        child: Icon(Icons.add, size: 30),
        shape: CircleBorder(),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
