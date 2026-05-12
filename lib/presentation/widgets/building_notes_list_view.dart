import 'package:flutter/material.dart';
import 'package:notes_app/core/constants/app_lists.dart';
import 'package:notes_app/presentation/widgets/note.dart';

class BuildingNotesListView extends StatelessWidget {
  const BuildingNotesListView({super.key, required this.updateNotesHome});
  final VoidCallback updateNotesHome;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return Note(
          noteModel: AppLists.notesList[index],
          noteIndex: index,
          updateNotesHome: updateNotesHome,
        );
      },
      itemCount: AppLists.notesList.length,
    );
  }
}
