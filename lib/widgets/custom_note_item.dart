import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to edit note screen or perform any action
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditNote()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 151, 52),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Flutter Tips",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "Learn how to build beautiful apps with Flutter.",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(179, 77, 72, 72),
                      ),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Icon(Icons.delete, color: Colors.black, size: 38),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24, bottom: 20),
                  child: Text(
                    "may21 , 2025",
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(179, 77, 72, 72),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
