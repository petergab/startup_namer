import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            wordPair.asPascalCase,
            style: TextStyle(fontSize: 50, color: Colors.green[900]),
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
