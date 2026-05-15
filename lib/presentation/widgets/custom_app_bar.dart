import 'package:flutter/material.dart';
import 'package:notes_app/core/constants/colors_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onClick,
  });
  final String title;
  final IconData icon;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
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
                onPressed: onClick,
                icon: Icon(icon, size: 25, color: ColorsManager.kWhite),
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
