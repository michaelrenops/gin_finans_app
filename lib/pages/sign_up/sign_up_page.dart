import 'package:flutter/material.dart';
import 'package:gin_finans_app/pages/inherited/sign_up_inherited.dart';
import 'package:gin_finans_app/pages/sign_up/views/sign_up_body.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SignUpInherited(
      child: Scaffold(
        body: SignUpBody()
      )
    );
  }
}
