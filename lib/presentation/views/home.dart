import 'package:flutter/material.dart';
import 'package:notes_app/presentation/widgets/build_floating_action_button.dart';
import 'package:notes_app/presentation/widgets/building_notes_List_view.dart';
import 'package:notes_app/presentation/widgets/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BuildingNotesListView(),
      floatingActionButton: BuildFloatingActionButton(),
    );
  }
}
