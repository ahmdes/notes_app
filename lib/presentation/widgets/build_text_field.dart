import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/resources/colors_manager.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({super.key, required this.label, this.maxLines});
  final String label;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.blue0, width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.blue0, width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
