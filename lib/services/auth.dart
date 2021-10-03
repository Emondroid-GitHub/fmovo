import 'package:firebase_auth/firebase_auth.dart';
import 'package:fmovo/models/kurye.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

//  Kurye? _kurye (User _user){
//    return _user != null ? Kurye(uID: _user.uid) : null;
//  }

  Future signInAnonymous() async {
    try{
       UserCredential _userCredential = await _auth.signInAnonymously();
       User? user = _userCredential.user;
       return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  // email password

  // register

  //sign out
}