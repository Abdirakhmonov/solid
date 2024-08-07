import 'package:flutter/material.dart';
import 'package:solid/model/message_model.dart';

class MessageListWidget extends StatelessWidget {
  final List<MessageModel> messages;

  MessageListWidget({required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return ListTile(
          title: message.isFile
              ? Text('File: ${message.messageText}')
              : Text(message.messageText),
          subtitle: Text(message.createdTime),
        );
      },
    );
  }
}
