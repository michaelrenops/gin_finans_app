import 'package:flutter/material.dart';
import 'package:gin_finans_app/pages/sign_up/inherited/sign_up_inherited.dart';

class SignUpPageView extends StatelessWidget {
  const SignUpPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    PageController _pageController = _signUpInherited.pageController;

    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[

      ]
    );
  }
}
