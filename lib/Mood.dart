import 'package:flutter/material.dart';

class Mood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Stack(
          children: [
             const Positioned(
              left: 152, // Adjust the left position as needed
              top: 0, // Adjust the top position as needed
              child: Text(
                "Mood",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Itim",
                  color: Color.fromARGB(255, 205, 180, 219),
                ),
              ),
            ),
            
             Positioned(
              left: 0, // Adjust the left position of the rectangle
              top: 770, // Adjust the top position of the rectangle
              child: Container(
                width: 430, // Width of the rectangle
                height: 100, // Height of the rectangle
                color: Color.fromARGB(255, 205, 180, 219),// Color of the rectangle
              ),
            ),
            Positioned(
              left: 52,
              top: 80,
              child: Container(
                width: 320,
                height: 410,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 205, 180, 219),
                    width: 2,
                    ),
          borderRadius: BorderRadius.circular(50),
        ),
              ),
            ),
            Positioned(
              left: 52,
              top: 510,
              child: Container(
                width: 325,
                height: 197,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 205, 180, 219),
                    width: 2,
                    ),
          borderRadius: BorderRadius.circular(50),
        ),
              ),
            ),
            Positioned(
              left: 195,
              top: 530,
              child: Container( 
                width: 40,
                height: 40,
                child: Image.asset('icon/grammerly.png'), // Path to your image asset
              ),
            ),
            
            const Positioned(
              left: 71,
              top: 575,
              child: Text( 
                'วันนี้อารมณ์ของคุณเป็นอย่างไร',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Itim",
                  color: Color.fromARGB(255, 205, 180, 219),
                ),
              ),
            ),
            Positioned(
              left: 70,
              top: 625,
              child: Container( 
                width: 50,
                height: 50,
                child: Image.asset('icon/5.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 130,
              top: 625,
              child: Container( 
                width: 50,
                height: 50,
                child: Image.asset('icon/4.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 189,
              top: 625,
              child: Container( 
                width: 50,
                height: 50,
                child: Image.asset('icon/3.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 249,
              top: 625,
              child: Container( 
                width: 50,
                height: 50,
                child: Image.asset('icon/2.png'), // Path to your image asset
              ),
            ),
            Positioned(
              left: 309,
              top: 625,
              child: Container( 
                width: 50,
                height: 50,
                child: Image.asset('icon/1.png'), // Path to your image asset
              ),
            ),
          ],
        ),
      ),
    );
  }
}
