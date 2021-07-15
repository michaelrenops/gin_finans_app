part of 'page_view.dart';

class PageViewCreatePassword extends StatelessWidget {
  const PageViewCreatePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _title(),
            SizedBox(height: 20.0),
            _subTitle(),
            SizedBox(height: 30.0),
            Form(
              child: PasswordInput(),
            ),
            SizedBox(height: 20.0),
            PasswordComplexityChecker(),
          ],
        )
      ),
    );
  }

  Widget _title() {
    return Text(
      'Create Password',
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _subTitle() {
    return Text(
      'Password will be used to login to account.',
      style: TextStyle(
        fontSize: 14.0
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    String _initialValue = _signUpInherited.password;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: TextFormField(
        initialValue: _initialValue,
        obscureText: true,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Password',
          suffixIcon: GestureDetector(
            child: Icon(Icons.visibility),
            onTap: () {},
          )
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}

class PasswordComplexityChecker extends StatelessWidget {
  const PasswordComplexityChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Complexity : '),
        Text('-'),
        _complexity('Very Weak', Colors.red),
        _complexity('Weak', Colors.red),
        _complexity('Medium', Colors.amber),
        _complexity('Strong', Colors.green),
        _complexity('Very Strong', Colors.green)
      ]
    );
  }

  Widget _complexity(String text, Color color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class PasswordValidityChecker extends StatelessWidget {
  PasswordValidityChecker({Key? key}) : super(key: key);

  final RegExp _lowercase = RegExp(r'[a-z]');
  final RegExp _uppercase = RegExp(r'[A-Z]');
  final RegExp _number = RegExp(r'\d');

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    String _password = _signUpInherited.password;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _content(_lowercase.hasMatch(_password) == true ? true : false, 'a', 'Lowercase'),
        _content(_uppercase.hasMatch(_password) == true ? true : false, 'A', 'Uppercase'),
        _content(_number.hasMatch(_password) == true ? true : false, '123', 'Number'),
        _content(_password.length >= 9 ? true : false, '9+', 'Characters')
      ],
    );
  }

  Widget _content(bool valid, String title, String subTitle) {
    return Column(
      children: <Widget>[
        valid ? _checkmark() : Text(
          title,
          style: TextStyle(
            fontSize: 26.0
          ),
        ),
        SizedBox(height: 12.0),
        Text(subTitle)
      ],
    );
  }

  Widget _checkmark() {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle
      ),
    );
  }
}
