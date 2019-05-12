import 'package:flutter/material.dart';

const String _name = "Trung";

class ChatMessage extends StatelessWidget {
  final String textMessage;
  ChatMessage({this.textMessage});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _name,
                style: Theme.of(context).textTheme.subhead,
              ),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(textMessage),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
