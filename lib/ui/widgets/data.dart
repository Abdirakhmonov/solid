
import 'package:solid/model/contact_model.dart';
import 'package:solid/model/message_model.dart';

List<ContactModel> allContacts = List.generate(
    15,
    (index) => ContactModel(
          contactId: index,
          contactLastName: "LastName$index",
          contactName: "Contact$index",
          isOnline: index % 2 == 0,
          imageUrl: "https://example.com/image$index.png",
          lastOnlineTime: DateTime.now().subtract(Duration(minutes: index * 5)),
        ));

List<MessageModel> allMessages = List.generate(
    15,
    (index) => MessageModel(
          createdTime:
              DateTime.now().subtract(Duration(days: index)).toString(),
          messageText: index % 2 == 0
              ? "This is a text message $index"
              : "https://example.com/file$index.pdf",
          messageId: index,
          isFile: index % 2 != 0,
          contactId: index % 15,
          status: index % 2 == 0,
        ));
