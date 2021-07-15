import 'package:flutter/material.dart';
import 'package:gin_finans_app/pages/sign_up/inherited/sign_up_inherited.dart';
import 'package:gin_finans_app/pages/sign_up/views/sign_up_body.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SignUpInherited(
      pageController: _pageController,
      currentPage: _currentPage,
      child: Scaffold(
        body: SignUpBody()
      )
    );
  }
}
