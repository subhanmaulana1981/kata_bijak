import 'package:flutter/material.dart';
import 'package:kata_bijak/quote.dart';
import 'package:kata_bijak/quote_card.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Apapun makanannya, minumnya Teh Botol Sosro", author: "Sosro"),
    Quote(text: "Pertamina, pasti pas!", author: "Pertamina"),
    Quote(text: "Orang pintar, minum Tolak Angin", author: "Tolak Angin")
  ];

  /*Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
