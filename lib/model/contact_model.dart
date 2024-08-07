class ContactModel {
  final int contactId;
  final String contactName;
  final String contactLastName;
  final bool isOnline;
  final String imageUrl;
  final DateTime lastOnlineTime;

  ContactModel({
    required this.contactId,
    required this.contactLastName,
    required this.contactName,
    required this.isOnline,
    required this.imageUrl,
    required this.lastOnlineTime,
  });
}
