import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/resources/constant_manager.dart';

class BuildingNotesListView extends StatelessWidget {
  const BuildingNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return ConstantManager.notesList[index];
      },
      itemCount: ConstantManager.notesList.length,
    );
  }
}
