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
