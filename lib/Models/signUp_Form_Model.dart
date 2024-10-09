class SignupFormModel {
  final String? name;
  final String? email;
  final String? password;
  final String? pin;
  final String? profile_picture;
  final String? ktp;

  SignupFormModel({
    this.name,
    this.email,
    this.password,
    this.pin,
    this.profile_picture,
    this.ktp,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'passwrd': password,
      'pin': pin,
      'profile_picture': profile_picture,
      'ktp': ktp,
    };
  }

  SignupFormModel copyWith(
          {String? pin, String? profile_picture, String? ktp}) =>
      SignupFormModel(
        name: name,
        email: email,
        password: password,
        pin: pin ?? this.pin,
        profile_picture: profile_picture ?? this.profile_picture,
        ktp: ktp ?? this.ktp,
      );
}
