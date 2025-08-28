import 'package:flutter/material.dart';
import 'package:quiz_app/secondpage.dart';

class QuizeApp extends StatefulWidget {
  const QuizeApp({super.key});

  @override
  State createState() => _QuizeAppState();
}

class _QuizeAppState extends State {
  int currentindex = 0;
  int selectedAnswerindex = -1;
  int correctcount = 0;
  int iscorrect = 0;

  WidgetStateProperty<Color?> checkcolor(int buttonindex) {
    if (selectedAnswerindex != -1) {
      if (buttonindex == list[currentindex]['correct']) {
        if (buttonindex == selectedAnswerindex) {
          correctcount++;
        }
        return WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerindex == buttonindex) {
        return WidgetStatePropertyAll(Colors.red);
      } else {
        return WidgetStatePropertyAll(Colors.white);
      }
    } else {
      return WidgetStatePropertyAll(Colors.white);
    }
  }

  List<Map> list = [
    {
      "quetion": "What is the capital of France?",
      "option": ["Berlin", "Madrid", " Paris", " Rome"],
      "correct": 2,
    },
    {
      "quetion": "Which programming language used for iOS app development?",
      "option": ["Swift", "Kotlin", "Java", "Dart"],
      "correct": 0,
    },
    {
      "quetion": "who is the founder of Microsoft",
      "option": ["bill gets", "Elon MUsk", "Shashi sir", "Lary page"],
      "correct": 0,
    },
    {
      "quetion": "What is the value of π up to two decimal places?",
      "option": ["3.12", "3.14", "2.00", "0.0"],
      "correct": 1,
    },
    {
      "quetion": "Solve: 12 × 8 = ?",
      "option": ["85", " 96", "12", "45"],
      "correct": 1,
    },
    {
      "quetion": "In flutter Framework which language is primary used",
      "option": ["Java", "Dart", "Python", "C++"],
      "correct": 1,
    },
    {
      "quetion": "which Year The flutter is release",
      "option": ["2014", "2019", "2017", "2024"],
      "correct": 2,
    },
    {
      "quetion": "In flutter Engine Which Library are used to render the UI",
      "option": ["Skia", "OpenGL", "Rive", "SpriteWidget"],
      "correct": 0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 195, 195),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 15, 77),
        title: const Text(
          "Quiz App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 15, 77),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Row(children: [SizedBox(width: 15)]),
            ),
            SizedBox(height: 10),
            Text(
              "Quetions : ${currentindex + 1} / ${list.length}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 120,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Text(
                    list[currentindex]['quetion'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 400,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {
                            if (selectedAnswerindex == -1) {
                              selectedAnswerindex = 0;
                            }
                            setState(() {});
                          },
                          style: ButtonStyle(
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.black26,
                                  width: 1,
                                ),
                              ),
                            ),
                            shadowColor: WidgetStateProperty.all(Colors.black),
                            backgroundColor: checkcolor(0),
                          ),
                          child: Text(
                            list[currentindex]['option'][0],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {
                            if (selectedAnswerindex == -1) {
                              selectedAnswerindex = 1;
                            }
                            setState(() {});
                          },
                          style: ButtonStyle(
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.black26,
                                  width: 1,
                                ),
                              ),
                            ),
                            shadowColor: WidgetStateProperty.all(Colors.black),
                            backgroundColor: checkcolor(1),
                          ),
                          child: Text(
                            list[currentindex]['option'][1],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {
                            if (selectedAnswerindex == -1) {
                              selectedAnswerindex = 2;
                            }
                            setState(() {});
                          },
                          style: ButtonStyle(
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.black26,
                                  width: 1,
                                ),
                              ),
                            ),
                            shadowColor: WidgetStateProperty.all(Colors.black),
                            backgroundColor: checkcolor(2),
                          ),
                          child: Text(
                            list[currentindex]['option'][2],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {
                            if (selectedAnswerindex == -1) {
                              selectedAnswerindex = 3;
                            }
                            setState(() {});
                          },
                          style: ButtonStyle(
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.black26,
                                  width: 1,
                                ),
                              ),
                            ),
                            shadowColor: WidgetStateProperty.all(Colors.black),
                            backgroundColor: checkcolor(3),
                          ),
                          child: Text(
                            list[currentindex]['option'][3],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: SizedBox(
                    height: 45,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedAnswerindex != -1) {
                          if (currentindex < list.length - 1) {
                            currentindex++;
                            selectedAnswerindex = -1;
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => Secondpage(
                                      correctcount: correctcount,
                                      noofquestion: list.length,
                                    ),
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Color.fromARGB(255, 67, 15, 77),
                              duration: Duration(seconds: 2),
                              content: Center(
                                child: const Text(
                                  "please choose one option",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        setState(() {});
                      },
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.black26, width: 1),
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 67, 15, 77),
                        ),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
