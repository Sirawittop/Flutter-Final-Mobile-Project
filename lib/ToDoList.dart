import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      ),
      body:  Center(
        child: Stack(
          children: [
            const Positioned(
              left: 103, // Adjust the left position as needed
              top: 0, // Adjust the top position as needed
              child: Text(
                "To-Do List",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Itim",
                  color: Color.fromRGBO(255, 181, 167, 1),
                ),
              ),
            ),
            Positioned(
              left: 320, // Adjust the left position of the circle
              top: 660, // Adjust the top position of the circle
              child: Container(
                width: 80, // Diameter of the circle
                height: 80, // Diameter of the circle
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(255, 181, 167, 1),// Color of the circle
                ),
              ),
            ),
            Positioned(
              left: 325,
              top: 665,
              child: Container(
                width: 70,
                height: 70,
                child: Image.asset('icon/add.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 0, // Adjust the left position of the rectangle
              top: 770, // Adjust the top position of the rectangle
              child: Container(
                width: 430, // Width of the rectangle
                height: 100, // Height of the rectangle
                color: Color.fromRGBO(255, 181, 167, 1), // Color of the rectangle
              ),
            ),
          ],
        ),
      ),
    );
  }
}
