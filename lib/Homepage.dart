import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:lottie/lottie.dart';

import 'Quiz.dart';

Widget question(String ques) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      ques,
      style: TextStyle(fontSize: 30, color: Colors.amber[200]),
    ),
  );
}

Widget button2(
  BuildContext context,
  String str,
  Widget Function() createPage,
) {
  return SizedBox(
    width: 300,
    child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: (str.contains("Dart") ||
                    str.contains("Stream") ||
                    str.contains("Statefull"))
                ? MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color.fromARGB(255, 102, 255, 82);
                      }
                      return null;
                    },
                  )
                : MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Color.fromARGB(255, 208, 70, 16);
                      }
                      return null;
                    },
                  ),
            backgroundColor: MaterialStatePropertyAll(Colors.teal[400])),
        onPressed: () {
          if (str.contains("Dart") ||
              str.contains("Stream") ||
              str.contains("Statefull Widget")) {
            high = high! + 1;
          } else {}
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return createPage();
            },
          ));
        },
        child: Text(str)),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int? high = 0;
int score = 0;
int? best = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 76, 124, 4),
                  Colors.cyan.shade800
                ])),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Quiz application with flutter",
                textAlign: TextAlign.center,
              ),
            )),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 100)),
          Lottie.network(
            "https://lottie.host/1f8daad7-697d-46b5-ad97-4ffa718d819f/bZtXjvbMXf.json",
          ),
          Center(
            child: Text(
              "High Score: $best",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Center(
            child: AnimatedButton(
              animatedOn: AnimatedOn.onHover,
              onPress: () {
                high = 0;
                setState(() {});
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Quiz1();
                  },
                ));
              },
              height: 70,
              width: 200,
              text: 'START QUIZ',
              isReverse: true,
              selectedTextColor: Colors.black,
              selectedText: "Starting",
              transitionType: TransitionType.LEFT_TOP_ROUNDER,
              backgroundColor: Colors.black,
              selectedBackgroundColor: Colors.deepPurple,
              borderColor: Colors.white,
              borderWidth: 1,
            ),
          ),
          Lottie.network(
            "https://lottie.host/076481bf-281a-4663-a60b-40710871ead8/eg7ORmEeJC.json",
          )
        ],
      ),
    );
  }
}
