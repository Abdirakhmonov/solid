import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid/blocs/message/message_bloc.dart';
import 'package:solid/repositories/message_repository.dart';
import 'package:solid/ui/screens/main_screen.dart';
import 'package:solid/ui/widgets/data.dart';

void main() {
  final messageRepository = MessageRepository(allMessages, allContacts);

  runApp(MyApp(messageRepository: messageRepository));
}

class MyApp extends StatelessWidget {
  final MessageRepository messageRepository;

  MyApp({required this.messageRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => MessageBloc(messageRepository.allMessages),
        child: MainScreen(messageRepository: messageRepository),
      ),
    );
  }
}
