import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
      ),
      body: Center(
        child: Text('This is the Note screen'),
      ),
    );
  }
}
