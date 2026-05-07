import 'package:flutter/material.dart';
import 'package:notes_app/behaviour/resources/colors_manager.dart';
import 'package:notes_app/presentation/widgets/note.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes",
          style: TextStyle(
            color: ColorsManager.white,
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
                  color: const Color.fromARGB(255, 52, 50, 50),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: ColorsManager.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return Note(
            title: "Flutter Tips",
            description: "Build Your career with Ahmed Daoud",
          );
        },
        itemCount: 5,
      ),
      // Column(
      //   children: [
      //     Note(
      //       title: "Flutter Tips",
      //       description: "Build Your career with Ahmed Daoud",
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.blue0,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.blue0,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.blue0,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Spacer(),
                    TextField(
                      maxLines: 8,
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.all(70),
                        label: Text(
                          "Content",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.blue0,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.blue0,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Spacer(flex: 3),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueAccent,
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
        },
        child: Icon(Icons.add, color: ColorsManager.black),
      ),
    );
  }
}
