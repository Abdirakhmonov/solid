import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid/blocs/message/message_bloc.dart';
import 'package:solid/blocs/message/message_event.dart';
import 'package:solid/repositories/message_repository.dart';
import 'package:solid/ui/widgets/contact_list_widget.dart';

class MainScreen extends StatelessWidget {
  final MessageRepository messageRepository;

  MainScreen({required this.messageRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Application'),
        centerTitle: true,
      ),
      body: ContactListWidget(
        contacts: messageRepository.getContacts(),
        onContactTap: (contactId) {
          BlocProvider.of<MessageBloc>(context).add(LoadMessages(contactId));
        },
      ),
    );
  }
}
