import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List <Quote> quotes = [
    Quote(author: 'DALAI LAMA', text:'The purpose of our lives is to be HAPPY'),
    Quote(author: 'MAHATMA GANDHI', text:'Be the CHANGE that you wish to see in the world'),
    Quote(author: 'UNKNOWN', text:"Take RISK: if you win, you'll be HAPPY;\n if you lose, you'll be WISE")

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote:quote,
          delete:(){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}
