import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/models/note_model.dart';
import 'package:notes_app/behaviour/resources/colors_manager.dart';
import 'package:notes_app/behaviour/resources/constant_manager.dart';
import 'package:notes_app/presentation/widgets/build_text_field.dart';

class BuildFloatingActionButton extends StatefulWidget {
  const BuildFloatingActionButton({super.key});
  @override
  State<BuildFloatingActionButton> createState() =>
      _BuildFloatingActionButtonState();
}

class _BuildFloatingActionButtonState extends State<BuildFloatingActionButton> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorsManager.blue0,
      onPressed: () {
        showBottomSheet(context);
      },
      child: const Icon(Icons.add, color: ColorsManager.black),
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
                  color: ColorsManager.blue0,
                ),
                child: TextButton(
                  onPressed: () {
                    ConstantManager.notesList.add(
                      NoteModel(
                        component: contentController.text,
                        title: titleController.text,
                      ),
                    );
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: ColorsManager.black,
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
