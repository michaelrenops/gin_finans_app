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
        pageNumber(_currentPage, 1),
        pageNumber(_currentPage, 2),
        pageNumber(_currentPage, 3),
        pageNumber(_currentPage, 4)
      ],
    );
  }

  Widget pageNumber(int currentPage, int number) {
    return AnimatedContainer(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          number.toString(),
          style: TextStyle(
            color: currentPage >= number ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
      decoration: BoxDecoration(
        color: currentPage >= number ? Colors.blue : Colors.grey.shade200,
        shape: BoxShape.circle
      ),
    );
  }
}
