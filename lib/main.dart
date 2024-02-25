import 'package:flutter/material.dart';
import "package:flutterproject/Note.dart";
import "ToDoList.dart";
import "Mood.dart";
import "studytime.dart";

void main() {
  runApp(MyApp());
}

Color toDoListColor = const Color.fromRGBO(255, 181, 167, 1);
Color moodColor = const Color.fromARGB(255, 205, 180, 219);
Color studytimeColor = const Color.fromARGB(255, 162, 210, 255);
Color noteColer = const Color.fromARGB(255, 204, 213, 174);


// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            buildQuoteContainer(),
            ToDoListContainer(),
            MoodContainer(),
            StudytimeContainer(),
            NoteContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildQuoteContainer() {
    return Positioned(
      left: 52,
      top: 99,
      child: Container(
        width: 320,
        height: 410,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            '“One day,\n all your\n hard work\n will pay\n off.”',
            style: TextStyle(
              fontSize: 50,
              fontFamily: "Megrim",
              color: Colors.black,
              height: 1.15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class ToDoListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 53,
      top: 546,
      child: Container(
        width: 148,
        height: 131,
        decoration: BoxDecoration(
          border: Border.all(
            color: toDoListColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: () {
            // Navigate to ToDoList.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ToDoList()),
            );
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'icon/task-square.png',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(height: 5),
                Text(
                  'To-Do List',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Itim",
                    color: toDoListColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class MoodContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
    left: 229,
    top: 546,
    child: Container(
      width: 148,
      height: 131,
      decoration: BoxDecoration(
        border: Border.all(
          color: moodColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
        child: InkWell(
          onTap: () {
            // Navigate to ToDoList.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Mood()),
            );
          },
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset(
              'icon/grammerly.png',
              width: 60,
              height: 60,),
           const SizedBox(height: 5),
            Text(
              'Mood',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Itim",
                color: moodColor,
              ),
              textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class StudytimeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Positioned(
    left: 53,
    top: 708,
    child: Container(
      width: 148,
      height: 131,
      decoration: BoxDecoration(
        border: Border.all(
          color: studytimeColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
          onTap: () {
            // Navigate to ToDoList.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Studytime()),
            );
          },
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset(
              'icon/timer.png',
              width: 60,
              height: 60,),
           const SizedBox(height: 5),
            Text(
              'Study Time',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Itim",
                color: studytimeColor,
              ),
              textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





class NoteContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Positioned(
    left: 229,
    top: 708,
    child: Container(
      width: 148,
      height: 131,
      decoration: BoxDecoration(
        border: Border.all(
          color: noteColer,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
          onTap: () {
            // Navigate to ToDoList.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Note()),
            );
          },
         child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset(
              'icon/note.png',
              width: 60,
              height: 60,),
           const SizedBox(height: 5),
            Text(
              'Note',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Itim",
                color: noteColer,
              ),
              textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
