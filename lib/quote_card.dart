// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote; //final is used to make it immutable as it is stateless
  final VoidCallback delete;
  const QuoteCard(
      {super.key, required this.quote, required this.delete}); //constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton.icon(
              onPressed: delete,
              label: Text('Delete the quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
