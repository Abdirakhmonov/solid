import 'package:equatable/equatable.dart';
import 'package:solid/model/message_model.dart';

abstract class MessageState extends Equatable {
  const MessageState();

  @override
  List<Object> get props => [];
}

class MessagesLoading extends MessageState {}

class MessagesLoaded extends MessageState {
  final List<MessageModel> messages;

  const MessagesLoaded(this.messages);

  @override
  List<Object> get props => [messages];
}

class MessagesError extends MessageState {}
