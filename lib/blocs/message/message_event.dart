import 'package:equatable/equatable.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class LoadMessages extends MessageEvent {
  final int contactId;

  const LoadMessages(this.contactId);

  @override
  List<Object> get props => [contactId];
}
