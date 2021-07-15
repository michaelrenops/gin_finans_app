import 'package:flutter/material.dart';
import 'package:gin_finans_app/pages/sign_up/views/header/header.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              HeaderProgressBar(),
              HeaderProgressNumber(),
            ],
          ),
          SizedBox(height: 20.0),
          HeaderBack()
        ],
      ),
    );
  }
}
