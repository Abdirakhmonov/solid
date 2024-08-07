
import 'package:solid/model/contact_model.dart';
import 'package:solid/model/message_model.dart';

class MessageRepository {
  final List<MessageModel> allMessages;
  final List<ContactModel> allContacts;

  MessageRepository(this.allMessages, this.allContacts);

  List<ContactModel> getContacts() {
    return allContacts;
  }

  List<MessageModel> getMessagesByContactId(int contactId) {
    return allMessages
        .where((message) => message.contactId == contactId)
        .toList();
  }
}
