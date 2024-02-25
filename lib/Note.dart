import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            const Positioned(
              left: 160, // Adjust the left position as needed
              top: 0, // Adjust the top position as needed
              child: Text(
                "Note",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Itim",
                  color: Color.fromARGB(255, 204, 213, 174),
                ),
              ),
            ),
            Positioned(
              left: 340, // Adjust the left position of the circle
              top: 670, // Adjust the top position of the circle
              child: Container(
                width: 60, // Diameter of the circle
                height: 60, // Diameter of the circle
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 204, 213, 174)
                ),
              ),
            ),
            Positioned(
              left: 345,
              top: 675,
              child: SizedBox( 
                width: 50,
                height: 50,
                child: Image.asset('icon/add.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 0, // Adjust the left position of the rectangle
              top: 770, // Adjust the top position of the rectangle
              child: Container(
                width: 430, // Width of the rectangle
                height: 100, // Height of the rectangle
                color: const Color.fromARGB(255, 204, 213, 174),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
