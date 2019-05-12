import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _listChatMessage = <ChatMessage>[];

  void _handleSubmitted(String textMessage) {
    _textController.clear();
    ChatMessage _message = new ChatMessage(
      textMessage: textMessage,
    );
    setState(() {
      _listChatMessage.insert(0, _message);
    });
  }

  Widget _textComposerWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Send a message",
              ),
              controller: _textController,
              onSubmitted: _handleSubmitted,
            ),
          ),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            child: new IconButton(
              icon: Icon(Icons.send),
              color: Colors.blue,
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(10.0),
            reverse: true,
            itemBuilder: (_, index) => _listChatMessage[index],
            itemCount: _listChatMessage.length,
          ),
        ),
        new Divider(
          height: 2.0,
        ),
        new Container(
          child: _textComposerWidget(),
          decoration: new BoxDecoration(
            color: Colors.grey[200],
          ),
        ),
      ],
    );
  }
}
