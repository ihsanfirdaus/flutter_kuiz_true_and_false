import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kuis/data/data_pemrograman.dart';
import 'package:kuis/model/question_model.dart';
import 'package:kuis/views/result.dart';

class QuizPemrograman extends StatefulWidget {
  @override
  _QuizPemrogramanState createState() => _QuizPemrogramanState();
}

class _QuizPemrogramanState extends State<QuizPemrograman> with SingleTickerProviderStateMixin{

  List<QuestionModel> _questions = new List<QuestionModel>();

  int index = 0;
  int correct = 0,incorrect = 0, notAttempted = 0, points = 0;

  double beginAnim = 0.0;
  double endAnim = 1.0;

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    
    super.initState();

    _questions = getQuestion();

    animationController = AnimationController(duration: const Duration(seconds: 5),vsync: this)
    ..addListener((){
      setState(() {
        
      });
    });

    animation = Tween(begin: beginAnim, end: endAnim).animate(animationController);
    startAnim();

    animationController.addStatusListener((AnimationStatus status){
      if(status == AnimationStatus.completed){
        setState(() {
          if(index < _questions.length - 1){
            index++;
            resetAnim();
            startAnim();
            notAttempted++;
          }else{
            notAttempted++;
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Result(
              score: points,
              totalQuestion: _questions.length,
              correct: correct,
              incorrect: incorrect,
              notattempted: notAttempted,
            )));
          }
        });
      }
    });

  }

  startAnim(){
    animationController.forward();
  }

  resetAnim(){
    animationController.reset();
  }

  stopAnim(){
    animationController.stop();
  }

  void nextQuestion() {
    if (index < _questions.length - 1) {
      index++;
      resetAnim();
      startAnim();
      
    } else {
      // notAttempted++;
      Navigator.pushReplacement(
          context,
            MaterialPageRoute(builder: (context) => Result(
              score: points,
              totalQuestion: _questions.length,
              correct: correct,
              incorrect: incorrect,
              notattempted: notAttempted
            )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => Future.value(false),
        child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 80),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("${index+1}/${_questions.length}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(width: 8,),
                    Text("Pertanyaan",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    ),),
                    Spacer(),
                    Text("$points",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(width: 8),
                    Text("Poin",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),
                child: Text("${_questions[index].getQuestion()} ?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 20),
              LinearProgressIndicator(
                value: animation.value
              ),
              CachedNetworkImage(imageUrl: _questions[index].getImageUrl()),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          if(_questions[index].getAnswer() == "True"){
                            setState(() {
                              points = points + 20;
                              nextQuestion();
                              correct++;
                            });
                          }else{
                            points = points - 5;
                            nextQuestion();
                            incorrect++;
                          }
                        },
                          child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text("True", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            ),),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.blue
                          ),
                        )
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          if(_questions[index].getAnswer() == "False"){
                            setState(() {
                              points = points + 20;
                              nextQuestion();
                              correct++;
                            });
                          }else{
                            points = points - 5;
                            nextQuestion();
                            incorrect++;
                          }
                        },
                          child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text("False", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            ),),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.red
                          ),
                        )
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}