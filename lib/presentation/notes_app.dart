import 'package:flutter/material.dart';
import 'package:notes_app/presentation/views/home.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Home(),
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
    );
  }
}
