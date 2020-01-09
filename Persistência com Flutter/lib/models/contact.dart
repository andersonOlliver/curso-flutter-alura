class Contact {
  final int id;
  final String name;
  final int accountNumber;

  Contact(this.name, this.accountNumber, this.id);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'account_number': accountNumber,
    };
  }

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, accountNumber: $accountNumber}';
  }

  Contact.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        accountNumber = json['accountNumber'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'accountNumber': accountNumber,
      };
}
