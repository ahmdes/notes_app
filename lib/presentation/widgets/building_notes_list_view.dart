import 'package:flutter/material.dart';
import 'package:notes_app/core/constants/app_lists.dart';
import 'package:notes_app/presentation/widgets/note.dart';

class BuildingNotesListView extends StatelessWidget {
  const BuildingNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return Note(noteModel: AppLists.notesList[index], noteIndex: index);
      },
      itemCount: AppLists.notesList.length,
    );
  }
}
