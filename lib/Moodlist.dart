import 'package:flutter/material.dart';
import 'model.dart'; // Assuming MoodEntry is defined in model.dart
import 'db_handlermood.dart'; // Assuming MoodDbHelper is defined in db_handlermood.dart

class MoodListShow extends StatelessWidget {
  const MoodListShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mood List',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Itim",
            color: Colors.black,
          ),
        ),
      ),
      body: FutureBuilder<List<MoodEntry>>(
        future: MoodDbHelper().getdataMood(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final moodEntries = snapshot.data ?? [];
            return Stack(
              children: [
                for (int i = 0; i < moodEntries.length; i++)
                  Positioned(
                    left: i == 0 ? 50.0 : 70.0 + (i - 1) * 20.0, 
                    top:  50.0,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'icon/${moodEntries[i].mood}.png',
                      ),
                    ),
                  ),
              ],
            );
          }
        },
      ),
    );
  }
}
