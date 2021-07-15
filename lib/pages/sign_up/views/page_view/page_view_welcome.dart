part of 'page_view.dart';

class PageViewWelcome extends StatelessWidget {
  const PageViewWelcome({Key? key}) : super(key: key);

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
              child: EmailInput(),
            )
          ],
        )
      ),
    );
  }

  Widget _title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Welcome to',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              'GIN ',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold
              )
            ),
            Text(
              'Finans',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              )
            ),
          ],
        )
      ],
    );
  }

  Widget _subTitle() {
    return Text(
      'Welcome to The Bank of The Future.\nManage and track your accounts on the go.',
      style: TextStyle(
        fontSize: 16.0
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    String _initialValue = _signUpInherited.email;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: TextFormField(
        initialValue: _initialValue,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          icon: Icon(
            Icons.mail_outline
          ),
          hintText: 'Email',
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}
