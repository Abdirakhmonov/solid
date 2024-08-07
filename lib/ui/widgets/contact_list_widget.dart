import 'package:flutter/material.dart';
import 'package:solid/model/contact_model.dart';

class ContactListWidget extends StatelessWidget {
  final List<ContactModel> contacts;
  final Function(int) onContactTap;

  ContactListWidget({required this.contacts, required this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return ListTile(
          title: Text('${contact.contactName} ${contact.contactLastName}'),
          subtitle: Text(contact.isOnline ? 'Online' : 'Offline'),
          onTap: () => onContactTap(contact.contactId),
        );
      },
    );
  }
}
