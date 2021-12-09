import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:word_to_gif/home/api/models/api_list_words.dart';

class CardPage extends StatefulWidget {
  CardPage({Key? key, required this.list}) : super(key: key);
  final ListWords list;

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: Text("${widget.list.author}"),
            ),
          ],
        ),
      ),
    );
  }
}
