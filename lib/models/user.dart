class User {
  final String? name;
  final String? username;
  final String? email;
  final String? profilePhotoUrl;
  static String? token;

  User({
    this.name,
    this.username,
    this.email,
    this.profilePhotoUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      username: json['username'],
      email: json['email'],
      profilePhotoUrl: json['profile_photo_url'],
    );
  }
}
