import 'package:flutter/material.dart';

class Mood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood'),
      ),
      body: Center(
        child: Text('This is the Mood screen'),
      ),
    );
  }
}
