import 'package:flutter/material.dart';
import 'package:ninja_app/quote.dart';

import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'To be or not to be, that is the question', author: 'Hamlet'),
    Quote(
        text: 'There is no one better that you at being you, don\'t mess it up',
        author: 'Humphrey'),
    Quote(
        text: 'Dogs also think, don\' discredit yourself so quickly',
        author: 'Dirty Bag')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesone Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) {
            return QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                });
          }).toList(),
        ));
  }
}
