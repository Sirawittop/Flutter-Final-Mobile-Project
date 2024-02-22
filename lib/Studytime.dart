import 'package:flutter/material.dart';

class Studytime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
      ),
      body:  Center(
        child: Stack(
          children: [
            const Positioned(
              left: 89, // Adjust the left position as needed
              top: 0, // Adjust the top position as needed
              child: Text(
                "Study Time",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Itim",
                  color: Color.fromARGB(255, 162, 210, 255),
                ),
              ),
            ),
            Positioned(
              left: 0, // Adjust the left position of the rectangle
              top: 770, // Adjust the top position of the rectangle
              child: Container(
                width: 430, // Width of the rectangle
                height: 100, // Height of the rectangle
                color: const Color.fromARGB(255, 162, 210, 255), 
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
