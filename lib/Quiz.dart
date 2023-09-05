import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Result.dart';

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
