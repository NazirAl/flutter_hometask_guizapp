import 'package:flutter/material.dart';
import 'guestionclass.dart';

class GuizApp extends StatefulWidget {
  const GuizApp({Key key}) : super(key: key);

  @override
  _GuizAppState createState() => _GuizAppState();
}

class _GuizAppState extends State<GuizApp> {
  GuestionBank guestionBank = GuestionBank();
  int guestionIndex = 0;
  bool correctAnswer;
  void updateGuestion(bool userChoice) {
    if (userChoice == correctAnswer) {
      setState(() {
        scoreIcon.add(
          const Icon(
            Icons.check,
            size: 30.0,
            color: Colors.green,
          ),
        );
        guestionIndex++;
      });
    } else {
      setState(() {
        scoreIcon.add(
          const Icon(
            Icons.close,
            size: 30.0,
            color: Colors.red,
          ),
        );
        guestionIndex++;

        lastGuestion();
      });
    }
  }

  void lastGuestion() {
    if (guestionIndex == guestionBank.guestionBrain.length) {
      alert();
      setState(() {
        guestionIndex = 0;
        scoreIcon = [];
      });
    }
  }

  int score = 0;
  void alert() {
    Alert(
            context: context,
            title: 'Finish',
            desc: 'you get $score from ${guestionBank.guestionBrain.length}')
        .show();
  }

  List<Icon> scoreIcon = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff212121),
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          title: const Center(
            child: Text(
              'Тапшырма - 07',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    guestionBank.guestionBrain[guestionIndex].GuestionText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 50.0),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    correctAnswer = guestionBank
                        .guestionBrain[guestionIndex].GuestionAnswer;
                    updateGuestion(true);
                  },
                  child: const Text(
                    'Туура',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    correctAnswer = guestionBank
                        .guestionBrain[guestionIndex].GuestionAnswer;
                    updateGuestion(false);
                  },
                  child: const Text(
                    'Туура эмес',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              ),
              Row(
                children: scoreIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Alert({BuildContext context, String title, String desc}) {}
