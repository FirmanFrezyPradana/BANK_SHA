class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? username;
  final int? verified;
  final String? profilePicture;
  final int? balance;
  final String? cardNumber;
  final String? pin;
  final String? token;
  final String? password;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.profilePicture,
    this.balance,
    this.cardNumber,
    this.pin,
    this.token,
    this.verified,
    this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        profilePicture: json['profile_picture'],
        balance: json['balance'],
        cardNumber: json['card_number'],
        pin: json['pin'],
        token: json['token'],
        verified: json['verified'],
      );

  UserModel copyWith({
    String? name,
    String? email,
    String? username,
    int? balance, // Pastikan hanya ada satu parameter balance
    String? password,
  }) =>
      UserModel(
        id: id,
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        balance: balance ?? this.balance,
        verified: verified,
        profilePicture: profilePicture,
        cardNumber: cardNumber,
        token: token,
        pin: pin,
      );
}
