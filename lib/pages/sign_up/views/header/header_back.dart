part of 'header.dart';

class HeaderBack extends StatelessWidget {
  const HeaderBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.arrow_back_ios,
              size: 20.0,
            ),
            SizedBox(width: 12.0),
            Text(
              'Back',
              style: TextStyle(
                fontSize: 20.0
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.transparent
        ),
      ),
      onTap: () {}
    );
  }
}
