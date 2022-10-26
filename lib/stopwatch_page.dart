import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(StopwatchPage());
}

class StopwatchPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StopwatchPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  String status = 'mulai stopwatch';
  String timeText = '00:00.00';
  Stopwatch stopwatch = Stopwatch();

  void _startTimer() {
    Timer(Duration(milliseconds: 25), _keepRunning);
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    String twoDigitMilliSeconds =
    twoDigits(duration.inMilliseconds.remainder(1000)).substring(0, 2);
    if (duration.inHours < 1) {
      return "$twoDigitMinutes:$twoDigitSeconds.$twoDigitMilliSeconds";
    } else {
      return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    }
  }

  void _keepRunning() {
    if (stopwatch.isRunning) {
      _startTimer();
    }
    setState(() {
      timeText = _printDuration(stopwatch.elapsed);
    });
  }

  void _resetStopwatch() {
    stopwatch.reset();
    setState(() {
      timeText = _printDuration(stopwatch.elapsed);
    });
  }

  void _toggleStopwatch() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
      setState(() {
        status = 'lanjutkan';
      });
    } else {
      stopwatch.start();
      _startTimer();
      setState(() {
        status = 'berhenti';
      });
    }
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
        backgroundColor: Colors.pink,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _toggleStopwatch();
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tekan layar untuk $status.',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              ),
              Text(
                timeText,
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _resetStopwatch();
        },
        tooltip: 'Reset Stopwatch',
        child: Icon(Icons.delete_forever),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
