part of 'header.dart';

class HeaderProgressNumber extends StatelessWidget {
  const HeaderProgressNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    int _currentPage = _signUpInherited.currentPage;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        pageNumber(1),
        pageNumber(2),
        pageNumber(3),
        pageNumber(4)
      ],
    );
  }

  Widget pageNumber(int number) {
    return AnimatedContainer(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          number.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle
      ),
    );
  }
}
