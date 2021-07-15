import 'package:flutter/material.dart';

class SignUpInherited extends InheritedWidget {
  SignUpInherited({
    Key? key,
    required this.pageController,
    required this.currentPage,
    required Widget child
  }) : super(key: key, child: child);

  PageController pageController;
  int currentPage;

  static SignUpInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SignUpInherited>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}