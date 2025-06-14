class UserModels {
  String? uid;
  String email;
  String? name;
  String? photoURL;

  UserModels({required this.email, this.uid, this.name, this.photoURL});

  Map<String, dynamic> toJson() {
    return {'email': email, 'name': name, 'photoURL': photoURL};
  }
}
