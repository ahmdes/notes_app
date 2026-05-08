import 'package:flutter/material.dart';
import 'package:notes_app/presentation/widgets/note.dart';

class BuildingNotesListView extends StatelessWidget {
  const BuildingNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return const Note(
          title: "Flutter Tips",
          description: "Build Your career with Ahmed Daoud",
        );
      },
      itemCount: 5,
    );
  }
}
