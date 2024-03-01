import 'package:flutter/material.dart';
import 'dart:async';

class CountDowntime extends StatefulWidget {
  const CountDowntime({Key? key}) : super(key: key);

  @override
  State<CountDowntime> createState() => _CountDowntimeState();
}

class _CountDowntimeState extends State<CountDowntime> {
  Duration duration = Duration(seconds: 0);
  Timer? time;
  bool isCountdown = true;

  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  void reset() {
    setState(() => duration = isCountdown ? duration : const Duration());
  }

  void addTime() {
    final addSecond = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSecond;
      if (seconds < 0) {
        time?.cancel();
      } else
        duration = Duration(seconds: seconds);

    });
  }

  void startTimer() {
    time = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void setTime() {
    int seconds = int.tryParse(_controller.text) ?? 0;
    setState(() {
      duration = Duration(seconds: seconds);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isRunning = time != null && time!.isActive;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            const Positioned(
              left: 89,
              top: 0,
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
              left: 65,
              top: 100,
              child: Container(
                child: buildTime(),
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 162, 210, 255),
                ),
              ),
            ),
            Positioned(
              left: 115,
              top: 550,
              child: SizedBox(
                width: 200,
                child: Center(
                  child: TextField(
                    controller: _controller,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    textAlign:
                        TextAlign.center, // Align text input to the center
                    decoration: const InputDecoration(
                      hintText: 'กรอกเวลา หน่วยเป็นวินาที',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 156,
              top: 610,
              child: ElevatedButton(
                onPressed: setTime,
                child: const Text('Set Time'),
              ),
            ),
            Positioned(
              left: 140,
              top: 400,
              child: GestureDetector(
                onTap: () {
                    startTimer();
                },
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset('icon/Play.png'),
                ),
              ),
            ),
            Positioned(
              left: 270,
              top: 450,
              child: GestureDetector(
                onTap: () {
                  if (isRunning) {
                    time?.cancel();
                  }
                },
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.asset('icon/Stop.png'),
                ),
              ),
            ),
            Positioned(
              left: 95,
              top: 450,
              child: GestureDetector(
                onTap: () {
                  if (isRunning) {
                    time?.cancel();
                  }
                  setTime();
                },
                child: SizedBox(
                  width: 65,
                  height: 65,
                  child: Image.asset('icon/x.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Center(
      child: Text(
        "$hours:$minutes:$seconds",
        style: const TextStyle(
          fontSize: 50,
          fontFamily: "Itim",
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
