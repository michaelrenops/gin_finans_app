import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            'Welcome',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold
            ),
          )
        )
      ],
    );
  }
}
