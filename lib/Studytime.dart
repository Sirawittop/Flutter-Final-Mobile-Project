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
            Positioned(
              left: 65, // Adjust the left position of the circle
              top: 145, // Adjust the top position of the circle
              child: Container(
                width: 300, // Diameter of the circle
                height: 300, // Diameter of the circle
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 162, 210, 255), 
                ),
              ),
            ),
            Positioned(
              left: 140,
              top: 490,
              child: SizedBox( 
                width: 120,
                height: 120,
                child: Image.asset('icon/Play.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 270,
              top: 550,
              child: SizedBox( 
                width: 60,
                height: 60,
                child: Image.asset('icon/Stop.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 95,
              top: 550,
              child: SizedBox( 
                width: 65,
                height: 65,
                child: Image.asset('icon/x.png'), // Path to your image asset
              ),
            ),
             Positioned(
              left: 139,
              top: 650,
              child: Container(
                width: 148,
                height: 51,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 162, 210, 255),
                    width: 2,
                    ),
          borderRadius: BorderRadius.circular(40),
        ),
              ),
            ),
            const Positioned(
              left: 155,
              top: 655,
              child: Text(
                "ตั้งระยะเวลา",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Itim",
                  color: Color.fromARGB(255, 162, 210, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

