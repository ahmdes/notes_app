import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/models/note_model.dart';
import 'package:notes_app/core/constants/colors_manager.dart';
import 'package:notes_app/core/constants/app_lists.dart';
import 'package:notes_app/core/utils/date_manager.dart';

class Note extends StatelessWidget {
  const Note({
    super.key,
    required this.noteModel,
    required this.noteIndex,
    required this.updateNotesHome,
  });

  final NoteModel noteModel;
  final int noteIndex;
  final VoidCallback updateNotesHome;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsManager.kYellow,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildingListTile(),

            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 10),
              child: Text(
                DateManager.getCurrentDate(),
                style: TextStyle(
                  color: ColorsManager.kBlack0,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildingListTile() {
    return ListTile(
      contentPadding: EdgeInsets.all(30),
      title: Text(
        noteModel.title,
        style: TextStyle(
          color: ColorsManager.kBlack,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          noteModel.component,
          style: TextStyle(
            color: ColorsManager.kBlack0,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          AppLists.notesList.removeAt(noteIndex);
          updateNotesHome();
        },
        icon: Icon(Icons.delete, size: 40, color: ColorsManager.kBlack),
      ),
    );
  }
}
