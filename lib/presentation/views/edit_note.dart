import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/models/note_model.dart';
import 'package:notes_app/presentation/widgets/build_text_field.dart';
import 'package:notes_app/presentation/widgets/custom_app_bar.dart';

class EditNote extends StatefulWidget {
  const EditNote({
    super.key,
    required this.noteModel,
    required this.updateHome,
  });
  final NoteModel noteModel;
  final VoidCallback updateHome;
  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    titleController.text = widget.noteModel.title;
    contentController.text = widget.noteModel.content;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Note',
        icon: Icons.done,
        onClick: () {
          widget.noteModel.title = titleController.text;
          widget.noteModel.content = contentController.text;
          widget.updateHome();
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          BuildTextField(label: "Title", controller: titleController),
          SizedBox(height: 15),
          BuildTextField(
            label: "Content",
            controller: contentController,
            maxLines: 8,
          ),
        ],
      ),
    );
  }
}
