// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        focusColor: const Color.fromARGB(255, 124, 112, 67),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

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
  return Container(
    width: 300,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.teal[400])),
        onPressed: () {
          if (str.contains("Dart") ||
              str.contains("Stream") ||
              str.contains("Statefull")) {
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
late int score = 0;
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
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Quiz1();
                  },
                ));
              },
              onChanges: (change) {},
              height: 70,
              width: 200,
              text: 'START QUIZ',
              isReverse: true,
              selectedTextColor: Colors.black,
              selectedText: "Starting",
              transitionType: TransitionType.LEFT_TOP_ROUNDER,
              backgroundColor: Colors.black,
              selectedBackgroundColor: Color.fromARGB(255, 74, 195, 187),
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

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: const Text("Quiz1"),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              question(
                  " 1)Which programming language is used to build Flutter applications?"),
              button2(context, "Dart", () => Quiz2()),
              Padding(padding: EdgeInsets.all(12)),
              button2(context, "Java", () => Quiz2()),
              Padding(padding: EdgeInsets.all(12)),
              button2(context, "Xml", () => Quiz2()),
              Padding(padding: EdgeInsets.all(12)),
              button2(context, "Flutter", () => Quiz2()),
            ],
          ),
        ),
      ),
    );
  }
}

class Quiz2 extends StatefulWidget {
  const Quiz2({super.key});

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.all(12),
                child: question(
                    "2) Sequence of asynchronous Flutter events is known as")),
            button2(context, "Async", () => Quiz3()),
            Padding(padding: EdgeInsets.all(12)),
            button2(context, "Future", () => Quiz3()),
            Padding(padding: EdgeInsets.all(12)),
            button2(context, "Column", () => Quiz3()),
            Padding(padding: EdgeInsets.all(12)),
            button2(context, "Stream", () => Quiz3()),
          ],
        ),
      ),
    );
  }
}

class Quiz3 extends StatefulWidget {
  const Quiz3({super.key});

  @override
  State<Quiz3> createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.all(12),
                child: question(
                    "3) A widget that allows us to refresh the screen is called a ____________.")),
            button2(context, "Stateless widgets", () => Result()),
            Padding(padding: EdgeInsets.all(12)),
            button2(context, "Statefull Widget", () => Result()),
            Padding(padding: EdgeInsets.all(12)),
            button2(context, "Refresh Indicator", () => Result()),
            Padding(padding: EdgeInsets.all(12)),
            button2(context, "All The Above", () => Result()),
          ],
        ),
      ),
    );
  }
}

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  String get resultPhrase {
    String resultText;
    if (high == 3) {
      resultText = "You are awesome and innocent!";
    } else if (high == 2) {
      resultText = "Preety likable";
    } else if (high == 1) {
      resultText = "You are ...  strange?";
    } else {
      resultText = "You are ...  Bad";
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  "animations/welldone.gif",
                  width: double.infinity,
                ),
              ),
            ),
            Text(resultPhrase + '\nYour Score is $high',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
            Container(
              width: 200,
              child: TextButton(
                  onPressed: () {
                    high = 0;
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Quiz1();
                      },
                    ));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(230, 229, 235, 225))),
                  child: Text('Restart quiz')),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Container(
              width: 200,
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(230, 237, 233, 238))),
                  onPressed: () {
                    if (high == 3) {
                      best = 3;
                    } else {}
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MyHomePage();
                      },
                    ));
                  },
                  child: Text("Return to HOme Page")),
            ),
          ],
        ),
      ),
    );
  }
}
