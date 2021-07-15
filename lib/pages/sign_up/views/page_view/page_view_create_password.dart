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
            PasswordComplexity(),
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: TextFormField(
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

class PasswordComplexity extends StatelessWidget {
  const PasswordComplexity({Key? key}) : super(key: key);

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
