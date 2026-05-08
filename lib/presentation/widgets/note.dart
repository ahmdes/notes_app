import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/resources/colors_manager.dart';

class Note extends StatelessWidget {
  const Note({super.key, required this.description, required this.title});
  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsManager.yellow,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildingListTile(),

            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 10),
              child: const Text(
                "4 may 2026",
                style: TextStyle(
                  color: ColorsManager.black0,
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
        title,
        style: TextStyle(
          color: ColorsManager.black,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          description,
          style: TextStyle(
            color: ColorsManager.black0,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.delete, size: 40, color: ColorsManager.black),
      ),
    );
  }
}
