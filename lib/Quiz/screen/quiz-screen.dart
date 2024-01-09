import 'package:flutter/material.dart';

import '../model/question_model.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 226, 220, 224),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Quiz App",
            style:
                TextStyle(color: Color.fromARGB(255, 11, 10, 10), fontSize: 20),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Color.fromARGB(255, 200, 10, 10),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
              color:const Color.fromARGB(255, 37, 131, 71),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            //Maka ilay question any anatin'ilay question iny
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 12),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        //Style an'ilay boutton question ito
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected
              ? const Color.fromARGB(255, 145, 126, 101)
              :const Color.fromARGB(255, 37, 132, 54),
          // primary: isSelected? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //       content: Text("Hello i am snackbar"),
          //       //behavior sy margin io no entina misafidy ny toerana misy ilay notification

          //       // behavior: SnackBarBehavior.floating,
          //       // margin: EdgeInsets.only(
          //       //     bottom: MediaQuery.of(context).size.height - 700),

          //       action: SnackBarAction(
          //         label: "Undo",
          //         onPressed: () {
          //           print("Undo button is clicked");
          //         },
          //       ),
          //     )

          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        //Style an'ilay boutton question ito
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 19, 172, 57),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      isPassed = true;
    }

    return AlertDialog(
      title: Text(
        " Ny isa azonao dia : $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Hiverina ilalao ?"),
        onPressed: () {
          Navigator.pop(context);

          setState(() {
            // showDialog(
            //     context: context,
            //     builder: (context) => AlertDialog(
            //           backgroundColor: Colors.greenAccent,
            //           title: Text('Hiverina hilalao ve ianao?'),
            //           content:
            //               Text("Do you want to close the alert dialog box?"),
            //           actions: [
            //             TextButton(
            //                 onPressed: () {
            //                   print("Yes is selected");

            //                   Navigator.pop(context);
            //                 },
            //                 child: Text('Yes')),
            //             TextButton(
            //                 onPressed: () {
            //                   print("No is selected");
            //                 },
            //                 child: Text('No'))
            //           ],
            //         ));
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}
