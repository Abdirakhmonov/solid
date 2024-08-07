import 'package:bloc/bloc.dart';
import 'package:solid/blocs/message/message_event.dart';
import 'package:solid/blocs/message/message_state.dart';
import 'package:solid/model/message_model.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final List<MessageModel> allMessages;

  MessageBloc(this.allMessages) : super(MessagesLoading()) {
    on<LoadMessages>((event, emit) {
      try {
        final messages = allMessages
            .where((message) => message.contactId == event.contactId)
            .toList();
        emit(MessagesLoaded(messages));
      } catch (_) {
        emit(MessagesError());
      }
    });
  }
}
