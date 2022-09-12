import 'package:flutter/material.dart';
import 'package:kata_bijak/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function() delete;
  const QuoteCard({ super.key, required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            IconButton(
              onPressed: delete,
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
