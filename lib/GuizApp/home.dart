import 'package:flutter/material.dart';
import 'question.dart';

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

  /*List<String> questions = [
    'Flutter is mobile development SDK',
    'Css is a programing language',
    'ReactJS is a Javascript Framework',
  ];*/
  
  List<Question> questions = [
    new Question("Flutter is mobile development SDK", true),
    Question("Css is a programing language",false),
    new Question("ReactJS is a Javascript Framework", true),
  ];



  int currentQ = 0;
  int score = 0;

  void nextQuestion()
  {
setState(() {
  currentQ++;
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
             nextQuestion();
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
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
       Expanded(
         flex: 2,
         child:  Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Column(
               children: [
                 Text("Correct",style: TextStyle(color: Colors.white70,fontSize: 18),),
                 SizedBox(height: 12,),
                 Text('10',style: TextStyle(color: Colors.white70,fontSize: 18),),
               ],
             ),
             Column(
               children: [
                 Text("Correct",style: TextStyle(color: Colors.white70,fontSize: 18),),
                 SizedBox(height: 12,),
                 Text('10',style: TextStyle(color: Colors.white70,fontSize: 18),),
               ],
             )
           ],
         ),
       )
      ],
    );
  }
}
