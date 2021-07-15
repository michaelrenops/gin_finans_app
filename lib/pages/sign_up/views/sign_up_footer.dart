import 'package:flutter/material.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: TextButton(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Next',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColorDark),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            )
          )
        ),
        onPressed: () {

        },
      ),
    );
  }
}
