import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/resources/colors_manager.dart';
import 'package:notes_app/presentation/widgets/build_text_field.dart';

class BuildFloatingActionButton extends StatelessWidget {
  const BuildFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorsManager.blue0,
      onPressed: () {
        showBottomSheet(context);
      },
      child: Icon(Icons.add, color: ColorsManager.black),
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
              BuildTextField(label: "Title"),
              Spacer(),
              BuildTextField(label: "Content", maxLines: 8),
              Spacer(flex: 3),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorsManager.blue0,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
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
