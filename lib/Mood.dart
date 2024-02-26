import 'package:flutter/material.dart';
import 'db_handlermood.dart';
import 'model.dart' as model;
import 'Moodlist.dart';

class Mood extends StatefulWidget {
  @override
  _MoodState createState() => _MoodState();
}

class _MoodState extends State<Mood> {
  Future<List<model.MoodEntry>> _getData() {
    return MoodDbHelper().getdataMood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mood',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Itim",
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.mood_outlined,
            size: 30,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MoodListShow()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Stack(
              children: [
                Center(
                  child: FutureBuilder<List<model.MoodEntry>>(
                    future: _getData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        final moodEntries = snapshot.data!;
                      if (DateTime.now().toString().split(' ')[0] == moodEntries[0].date.toString().split(' ')[0]) {
                        if (moodEntries.isNotEmpty && moodEntries[0].mood == '1') {
                          return Stack(
                            children: [
                              Positioned(
                                top: 100, // Adjust as needed
                                left: 70, // Adjust as needed
                                child: Image.asset(
                                  'icon/1.png',
                                  width: 300, // Adjust as needed
                                  height: 300, // Adjust as needed
                                ),
                              ),
                            ],
                          );
                        }
                        if (moodEntries.isNotEmpty && moodEntries[0].mood == '2') {
                          return Stack(
                            children: [
                              Positioned(
                                top: 100, // Adjust as needed
                                left: 70, // Adjust as needed
                                child: Image.asset(
                                  'icon/2.png',
                                  width: 300, // Adjust as needed
                                  height: 300, // Adjust as needed
                                ),
                              ),
                            ],
                          );
                        }
                        if (moodEntries.isNotEmpty && moodEntries[0].mood == '3') {
                          return Stack(
                            children: [
                              Positioned(
                                top: 100, // Adjust as needed
                                left: 70, // Adjust as needed
                                child: Image.asset(
                                  'icon/3.png',
                                  width: 300, // Adjust as needed
                                  height: 300, // Adjust as needed
                                ),
                              ),
                            ],
                          );
                        }
                        if (moodEntries.isNotEmpty && moodEntries[0].mood == '4') {
                          return Stack(
                            children: [
                              Positioned(
                                top: 100, // Adjust as needed
                                left: 70, // Adjust as needed
                                child: Image.asset(
                                  'icon/4.png',
                                  width: 300, // Adjust as needed
                                  height: 300, // Adjust as needed
                                ),
                              ),
                            ],
                          );
                        }
                        if (moodEntries.isNotEmpty && moodEntries[0].mood == '5') {
                          return Stack(
                            children: [
                              Positioned(
                                top: 100, // Adjust as needed
                                left: 70, // Adjust as needed
                                child: Image.asset(
                                  'icon/5.png',
                                  width: 300, // Adjust as needed
                                  height: 300, // Adjust as needed
                                ),
                              ),
                            ],
                          );
                        }
                      

                        return const Text('Error loading data');
                        }
                        return const Text('');
                      }
                    },
                  ),
                ),
                Positioned(
                  left: 0, // Adjust the left position of the rectangle
                  top: 770, // Adjust the top position of the rectangle
                  child: Container(
                    width: 430, // Width of the rectangle
                    height: 100, // Height of the rectangle
                    color: const Color.fromARGB(
                        255, 205, 180, 219), // Color of the rectangle
                  ),
                ),
              ],
            ),
            
            Positioned(
              left: 52,
              top: 510,
              child: Container(
                width: 325,
                height: 197,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 205, 180, 219),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              left: 195,
              top: 530,
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(
                    'icon/grammerly.png'), // Path to your image asset
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
              child: SizedBox(
                width: 50,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    MoodDbHelper dbHelper = MoodDbHelper();
                    if (dbHelper == null) {
                      dbHelper.insert(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '5',
                      ));
                    } else {
                      dbHelper.update(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '5',
                      ));
                    }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mood()),
                    );
                  },
                  child: Image.asset('icon/5.png'),
                ),
              ),
            ),
            Positioned(
              left: 130,
              top: 625,
              child: SizedBox(
                width: 50,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    MoodDbHelper dbHelper = MoodDbHelper();
                    if (dbHelper == null) {
                      dbHelper.insert(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '4',
                      ));
                    } else {
                      dbHelper.update(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '4',
                      ));
                    }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mood()),
                    );
                  },
                  child: Image.asset('icon/4.png'),
                ),
              ),
            ),
            Positioned(
              left: 189,
              top: 625,
              child: SizedBox(
                width: 50,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    MoodDbHelper dbHelper = MoodDbHelper();
                    if (dbHelper == null) {
                      dbHelper.insert(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '3',
                      ));
                    } else {
                      dbHelper.update(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '3',
                      ));
                    }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mood()),
                    );
                  },
                  child: Image.asset('icon/3.png'),
                ),
              ),
            ),
            Positioned(
              left: 249,
              top: 625,
              child: SizedBox(
                width: 50,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    MoodDbHelper dbHelper = MoodDbHelper();
                    if (dbHelper == null) {
                      dbHelper.insert(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '2',
                      ));
                    } else {
                      dbHelper.update(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '2',
                      ));
                    }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mood()),
                    );
                  },
                  child: Image.asset('icon/2.png'),
                ),
              ),
            ),
            Positioned(
              left: 309,
              top: 625,
              child: SizedBox(
                width: 50,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    MoodDbHelper dbHelper = MoodDbHelper();
                    if (dbHelper == null) {
                      dbHelper.insert(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '1',
                      ));
                    } else {
                      dbHelper.update(model.MoodEntry(
                        date: DateTime.now().toString(),
                        mood: '1',
                      ));
                    }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mood()),
                    );
                  },
                  child: Image.asset('icon/1.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
