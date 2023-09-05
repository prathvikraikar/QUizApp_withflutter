// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Homepage.dart';

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
