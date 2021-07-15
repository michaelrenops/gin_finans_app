import 'package:flutter/material.dart';
import 'package:gin_finans_app/pages/sign_up/views/sign_up_footer.dart';
import 'package:gin_finans_app/pages/sign_up/views/sign_up_header.dart';
import 'package:gin_finans_app/pages/sign_up/views/sign_up_page_view.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SignUpHeader(),
          Expanded(
            child: SignUpPageView(),
          ),
          SignUpFooter()
        ],
      )
    );
  }
}
