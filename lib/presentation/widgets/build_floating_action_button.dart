import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/models/note_model.dart';
import 'package:notes_app/core/constants/colors_manager.dart';
import 'package:notes_app/core/constants/app_lists.dart';
import 'package:notes_app/presentation/widgets/build_text_field.dart';

class BuildFloatingActionButton extends StatefulWidget {
  const BuildFloatingActionButton({super.key, required this.updateNotesHome});
  final VoidCallback updateNotesHome;

  @override
  State<BuildFloatingActionButton> createState() =>
      _BuildFloatingActionButtonState();
}

class _BuildFloatingActionButtonState extends State<BuildFloatingActionButton> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    contentController.dispose();
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorsManager.kBlue0,
      onPressed: () {
        showBottomSheet(context);
      },
      child: const Icon(Icons.add, color: ColorsManager.kBlack),
    );
  }

  Future<dynamic> showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(),
              BuildTextField(label: "Title", controller: titleController),
              Spacer(),
              BuildTextField(
                label: "Content",
                maxLines: 8,
                controller: contentController,
              ),
              Spacer(flex: 3),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorsManager.kBlue0,
                ),
                child: TextButton(
                  onPressed: () {
                    AppLists.notesList.add(
                      NoteModel(
                        component: contentController.text,
                        title: titleController.text,
                      ),
                    );
                    contentController.clear();
                    titleController.clear();
                    Navigator.pop(context);
                    widget.updateNotesHome();
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: ColorsManager.kBlack,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
