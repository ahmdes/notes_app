import 'package:flutter/material.dart';
import 'package:notes_app/presentation/widgets/build_floating_action_button.dart';
import 'package:notes_app/presentation/widgets/building_notes_List_view.dart';
import 'package:notes_app/presentation/widgets/custom_app_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Notes', icon: Icons.search, onClick: () {}),
      body: BuildingNotesListView(
        updateNotesHome: () {
          setState(() {});
        },
      ),
      floatingActionButton: BuildFloatingActionButton(
        updateNotesHome: () {
          setState(() {});
        },
      ),
    );
  }
}
