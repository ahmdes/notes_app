import 'package:flutter/material.dart';
import 'package:notes_app/core/constants/colors_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Notes",
        style: TextStyle(
          color: ColorsManager.kWhite,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: ColorsManager.kBlack0,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 25, color: ColorsManager.kWhite),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
