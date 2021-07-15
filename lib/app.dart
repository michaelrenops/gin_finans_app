import 'package:flutter/material.dart';
import 'package:gin_finans_app/pages/sign_up/sign_up_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GIN Finans App',
      home: SignUpPage()
    );
  }
}
