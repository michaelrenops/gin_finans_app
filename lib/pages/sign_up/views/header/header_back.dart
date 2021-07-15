part of 'header.dart';

class HeaderBack extends StatelessWidget {
  const HeaderBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    int _currentPage = _signUpInherited.currentPage;

    return GestureDetector(
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.arrow_back_ios,
              size: 20.0,
              color: _currentPage != 0 ? Colors.black : Colors.transparent,
            ),
            SizedBox(width: 12.0),
            Text(
              'Back',
              style: TextStyle(
                fontSize: 20.0,
                color: _currentPage != 0 ? Colors.black : Colors.transparent,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.transparent
        ),
      ),
      onTap: _signUpInherited.previousPage
    );
  }
}
