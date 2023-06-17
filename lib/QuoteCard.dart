import 'package:flutter/material.dart';
import 'Quotesandauthors.dart';
class QuoteCard extends StatelessWidget {
  Quotesandauthors q;
  void Function() delete;
  QuoteCard({required this.q, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Text(q.quote,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  q.author,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black45,
                  ),
                  textAlign: TextAlign.center,

                ),
                const SizedBox(height: 8.0),
                ElevatedButton.icon(onPressed: delete
                ,
                    icon: Icon(Icons.delete),
                    label: Text('Delete'),
                ),
              ]
          ),
        )
    );

  }
}