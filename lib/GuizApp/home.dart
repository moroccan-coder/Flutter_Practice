import 'package:flutter/material.dart';
import 'questions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF6944a4),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: QuestionPage(),
          ),
        ),
      ),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {


  int currentQ = 0;
  int score = 0;
  int correctCounter = 0;
  int wrongCounter = 0;

  void nextQuestion(bool answer,BuildContext context) {
    setState(() {
      if (questions[currentQ].answer == answer) {
        correctCounter++;
        score += 10;
      } else {
        wrongCounter++;
      }

      if (currentQ == questions.length - 1) {
        showResult(context);
        return;
      }
      currentQ++;
    });
  }

  void showResult(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Quiz Completed!'),
            content: Text('Your Score is $score'),
            actions: [
              RaisedButton(
                child: Text('Replay Quiz'),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    currentQ = 0;
                    correctCounter = 0;
                    wrongCounter = 0;
                    score = 0;
                  });
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Text(
            questions[currentQ].quest,
            style: TextStyle(fontSize: 20, color: Colors.white60),
          ),
        ),
        Expanded(
          flex: 1,
          child: ButtonTheme(
            minWidth: 190,
            buttonColor: Colors.white,
            splashColor: Colors.lightBlue,
            child: RaisedButton(
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {
                nextQuestion(true,context);
              },
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          flex: 1,
          child: ButtonTheme(
            minWidth: 190,
            buttonColor: Colors.white,
            splashColor: Colors.lightBlue,
            child: RaisedButton(
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {
                nextQuestion(false,context);
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Correct",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    correctCounter.toString(),
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Wrong",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    wrongCounter.toString(),
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
