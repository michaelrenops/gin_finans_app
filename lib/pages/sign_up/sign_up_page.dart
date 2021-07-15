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
  String _email = '';
  bool _validEmail = false;
  String _password = '';
  bool _validPassword = false;
  String _goalForActivation = '- Choose Option -';
  String _monthlyIncome = '- Choose Option -';
  String _monthlyExpenses = '- Choose Option -';
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  void _previousPage() {
    if (_currentPage != 0) {
      setState(() {
        _currentPage = _currentPage - 1;
      });
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 250), curve: Curves.linear);
    }
  }

  void _nextPage() {
    if (_currentPage == 0 || _currentPage == 1 || _currentPage == 2) {
      if (_currentPage == 0 && _validEmail) {
        _next();
      }
      else if (_currentPage == 1 && _validPassword) {
        _next();
      }
      else if (_currentPage == 2 && _goalForActivation != '- Choose Option -' && _monthlyIncome != '- Choose Option -' && _monthlyExpenses != '- Choose Option -') {
        _next();
      }
    }
  }

  void _next() {
    setState(() {
      _currentPage = _currentPage + 1;
    });
    _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 250), curve: Curves.linear);
  }

  void _onChangedEmail(String value) {
    final _emailRegex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (value == '') {
      setState(() {
        _email = value;
        _validEmail = false;
      });
    }
    else if (_emailRegex.hasMatch(value) == false) {
      setState(() {
        _email = value;
        _validEmail = false;
      });
    }
    else {
      setState(() {
        _email = value;
        _validEmail = true;
      });
    }
  }

  void _onChangedPassword(String value) {
    final _passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{9,}$');

    if (value == '') {
      setState(() {
        _password = value;
        _validPassword = false;
      });
    }
    else if (_passwordRegex.hasMatch(value) == false) {
      setState(() {
        _password = value;
        _validPassword = false;
      });
    }
    else {
      setState(() {
        _password = value;
        _validPassword = true;
      });
    }
  }

  void _onChangedGoalForActivation(String? value) {
    if (value != null) {
      if (value != '- Choose Option -') {
        setState(() {
          _goalForActivation = value;
        });
      }
    }
  }

  void _onChangedMonthlyIncome(String? value) {
    if (value != null && value != '- Choose Option -') {
      if (value != '- Choose Option -') {
        setState(() {
          _monthlyIncome = value;
        });
      }
    }
  }

  void _onChangedMonthlyExpenses(String? value) {
    if (value != null && value != '- Choose Option -') {
      if (value != '- Choose Option -') {
        setState(() {
          _monthlyExpenses = value;
        });
      }
    }
  }

  Future<void> _onDateTap() async {
    DateTime? datePicked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2021, 12)
    );

    if (datePicked != null) {
      setState(() {
        _dateController.text = datePicked.toString().replaceAll(' 00:00:00.000', '');
      });
    }
  }

  Future<void> _onTimeTap() async {
    TimeOfDay? timePicked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timePicked != null) {
      setState(() {
        _timeController.text = timePicked.toString().replaceAll('TimeOfDay(', '').replaceAll(')', '');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SignUpInherited(
      pageController: _pageController,
      currentPage: _currentPage,
      previousPage: _previousPage,
      nextPage: _nextPage,
      email: _email,
      onChangedEmail: _onChangedEmail,
      validEmail: _validEmail,
      password: _password,
      onChangedPassword: _onChangedPassword,
      validPassword: _validPassword,
      goalForActivation: _goalForActivation,
      onChangedGoalForActivation: _onChangedGoalForActivation,
      monthlyIncome: _monthlyIncome,
      onChangedMonthlyIncome: _onChangedMonthlyIncome,
      monthlyExpenses: _monthlyExpenses,
      onChangedMonthlyExpenses: _onChangedMonthlyExpenses,
      dateController: _dateController,
      onDateTap: _onDateTap,
      timeController: _timeController,
      onTimeTap: _onTimeTap,
      child: Scaffold(
        body: SignUpBody()
      )
    );
  }
}
