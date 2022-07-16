import 'package:flutter/material.dart';

import '../models/QuestionModel.dart';
import '../widgets/ExplanationCard.dart';
import 'HomeScreen.dart';

class QuizWorkingScreen extends StatefulWidget {
  List<QuestionModel> questions = <QuestionModel>[];

  QuizWorkingScreen(this.questions);

  @override
  _QuizWorkingScreenState createState() => _QuizWorkingScreenState(questions);
}

class _QuizWorkingScreenState extends State<QuizWorkingScreen> {
  List<QuestionModel> questions;

  int index = 0;

  var stepWidgets = <Widget>[];

  _QuizWorkingScreenState(this.questions);


  @override
  void initState() {
      setState(() {
        iteratorFunction();

      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade700,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // passing this to our root
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (route) => false);
              }),
          actions: [],
          title: Text("Workings",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20)),
          centerTitle: true,
        ),
        body: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
          SingleChildScrollView(

            child: Center (child: Container(
              //padding: const EdgeInsets.symmetric(vertical: 36.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  //A Row’s cross axis is vertical, and a Column’s cross axis is
                  // horizontal.

                  //Positions children at the middle of the cross axis.
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 20),
                          for (int i = 0; i < stepWidgets.length; i++)
                            stepWidgets[i],
                          SizedBox(height: 20),

                          //questionExtraction()
                        ],
                      ),
                  ]),
            )),
          )
        ]));
  }

  iteratorFunction() {
    try {
      var sortedKeys = questions[index].solutions.keys.toList()..sort();

      sortedKeys.forEach((element) {
        questions[index].solutions.forEach((key, value) {
          if (key == element) {
            var sortedValues = value.keys.toList()..sort();

            sortedValues.forEach((sortedValue) {
              print(value[sortedValue]);

              var step = ExplanationCard(step: value[sortedValue]);
              stepWidgets.add(step);
            });
          }
        });
      });
    } catch (Exc) {
      print(Exc);
    }
  }
}