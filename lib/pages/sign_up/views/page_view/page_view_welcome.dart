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
