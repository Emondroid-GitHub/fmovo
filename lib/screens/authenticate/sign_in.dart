import 'package:flutter/material.dart';
import 'package:fmovo/services/auth.dart';

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Giriş yap') ,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: Text ('Oturum Aç'),
          onPressed:  () async {
            dynamic result = await _authService.signInAnonymous();
            if(result == null){
              print('Oturum açarken hata oluştu.');
            }else{
              print ('Oturum açıldı');
              print (result);
            }

          },
        ),
      ),
    );
  }
}
