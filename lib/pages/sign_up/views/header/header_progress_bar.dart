part of 'header.dart';

class HeaderProgressBar extends StatelessWidget {
  const HeaderProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    int _currentPage = _signUpInherited.currentPage;

    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 10.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(Radius.circular(30.0))
          ),
        ),
        AnimatedContainer(
          width: (MediaQuery.of(context).size.width - 12.0) * 0.3,
          height: 10.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30.0))
          ),
          duration: Duration(milliseconds: 250),
          curve: Curves.linear
        )
      ],
    );
  }
}
