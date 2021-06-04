import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String? name;
  final String email;
  final String id;
  final String? photUrl;
  UserModel({
    this.name,
    required this.email,
    required this.id,
    this.photUrl,
  });

  factory UserModel.google(GoogleSignInAccount account) {
    return UserModel(
        name: account.displayName,
        email: account.email,
        id: account.id,
        photUrl: account.photoUrl);
  }
}
