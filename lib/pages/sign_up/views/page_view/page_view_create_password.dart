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
