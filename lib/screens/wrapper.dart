import 'package:flutter/material.dart';
import 'package:fmovo/screens/authenticate/authenticate.dart';
import 'package:fmovo/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // home veya authenticate ıle return
    return Authenticate();
  }
}
