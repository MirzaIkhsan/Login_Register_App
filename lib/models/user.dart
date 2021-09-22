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

  User copyWith({
    String? name,
    String? username,
    String? email,
    String? profilePhotoUrl,
  }) {
    return User(
      name: property(name, this.name),
      username: property(username, this.username),
      email: property(email, this.email),
      profilePhotoUrl: property(profilePhotoUrl, this.profilePhotoUrl),
    );
  }

  String? property(String? newProperti, String? properti) {
    return (newProperti == null || newProperti.isEmpty)
        ? properti
        : newProperti;
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      username: json['username'],
      email: json['email'],
      profilePhotoUrl: json['profile_photo_url'],
    );
  }
}
