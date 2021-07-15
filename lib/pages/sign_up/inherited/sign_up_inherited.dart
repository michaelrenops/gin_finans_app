import 'package:flutter/material.dart';

class SignUpInherited extends InheritedWidget {
  SignUpInherited({
    Key? key,
    required this.pageController,
    required this.currentPage,
    required this.nextPage,
    required this.previousPage,
    required this.email,
    required this.onChangedEmail,
    required this.validEmail,
    required this.password,
    required this.onChangedPassword,
    required this.validPassword,
    required this.goalForActivation,
    required this.onChangedGoalForActivation,
    required this.monthlyIncome,
    required this.onChangedMonthlyIncome,
    required this.monthlyExpenses,
    required this.onChangedMonthlyExpenses,
    required this.dateController,
    required this.onDateTap,
    required this.timeController,
    required this.onTimeTap,
    required Widget child
  }) : super(key: key, child: child);

  PageController pageController;
  int currentPage;
  VoidCallback nextPage;
  VoidCallback previousPage;
  String email;
  void Function(String) onChangedEmail;
  bool validEmail;
  String password;
  void Function(String) onChangedPassword;
  bool validPassword;
  String goalForActivation;
  void Function(String?)? onChangedGoalForActivation;
  String monthlyIncome;
  void Function(String?)? onChangedMonthlyIncome;
  String monthlyExpenses;
  void Function(String?)? onChangedMonthlyExpenses;
  TextEditingController dateController;
  Future<void> Function() onDateTap;
  TextEditingController timeController;
  Future<void> Function() onTimeTap;

  static SignUpInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SignUpInherited>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}