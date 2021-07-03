import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        // 'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      print(response);
    } catch (error) {
      print(error);
    }
  }
}
