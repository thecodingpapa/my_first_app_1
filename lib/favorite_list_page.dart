import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FavoriteListPage extends StatelessWidget {
  final List<WordPair> favorites;

  FavoriteListPage(
    this.favorites, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("favorite list"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              favorites[index].asPascalCase,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        },
        itemCount: favorites.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 1,
            color: Colors.grey[300],
            height: 5,
            indent: 16,
            endIndent: 16,
          );
        },
      ),
    );
  }
}
