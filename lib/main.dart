import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Some Real Estate App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reeel Estate'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

//class RandomWordsState extends State<RandomWords> {
//  @override
//  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();
//    return Text(wordPair.asPascalCase);
//  }
//}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

