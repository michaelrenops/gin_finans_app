import 'package:flutter/material.dart';

class SignUpInherited extends InheritedWidget {
  SignUpInherited({
    Key? key,
    required Widget child
  }) : super(key: key, child: child);

  static SignUpInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SignUpInherited>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}