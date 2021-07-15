import 'package:flutter/material.dart';
import 'package:gin_finans_app/pages/sign_up/inherited/sign_up_inherited.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    int _currentPage = _signUpInherited.currentPage;
    bool _validEmail = _signUpInherited.validEmail;
    bool _validPassword = _signUpInherited.validPassword;
    String _goalForActivation = _signUpInherited.goalForActivation;
    String _monthlyIncome = _signUpInherited.monthlyIncome;
    String _monthlyExpenses = _signUpInherited.monthlyExpenses;
    String _date = _signUpInherited.dateController.text;
    String _time = _signUpInherited.timeController.text;

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
