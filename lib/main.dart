import 'package:flutter/material.dart';
import 'package:my_first_app_1/word_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WordListPage(),
    );
  }
}
