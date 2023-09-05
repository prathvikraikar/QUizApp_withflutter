import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Quiz.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  // ignore: override_on_non_overriding_member
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Image.asset("animations/welldone.gif",
                      fit: BoxFit.contain),
                ),
              ),
              Text('$resultPhrase\nYour Score is $high',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                width: 200,
                child: TextButton(
                    onPressed: () {
                      high = 0;
                      setState(() {});
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
              SizedBox(
                width: 200,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(230, 237, 233, 238))),
                    onPressed: () {
                      best = high;
                      if (high! >= best!) {
                        best = high;
                      } else if (high! < best!) {
                        best;
                      }
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
      ),
    );
  }
}
