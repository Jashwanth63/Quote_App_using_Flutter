

import 'package:flutter/material.dart';
import 'Quotesandauthors.dart';
import 'QuoteCard.dart';
void main() => (runApp(const MaterialApp(
  home: quote(),
)));

class quote extends StatefulWidget {
  const quote({super.key});

  @override
  State<quote> createState() => _quoteState();
}


class _quoteState extends State<quote> {
  @override
  List<Quotesandauthors> quotes= [
    Quotesandauthors(quote: "The purpose of our lives is to be happy.",
        author: 'Dalai Lama'),
    Quotesandauthors(quote:"Life is what happens when you're busy making other plans.",
        author: "John Lennon"),
    Quotesandauthors(quote: "Many of life’s failures are people who did not realize how close they were to success when they gave up.",
        author: "Thomas A.Edison")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Quote App"),
        centerTitle: true,
      ),
        body:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: quotes.map((quote) => QuoteCard(q: quote, delete:
            () {
              setState(() {
                quotes.remove(quote);
              });
            }
            )).toList(),
          ),
    );
  }
}


