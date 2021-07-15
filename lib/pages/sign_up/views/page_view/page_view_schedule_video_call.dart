part of 'page_view.dart';

class PageViewScheduleVideoCall extends StatefulWidget {
  const PageViewScheduleVideoCall({Key? key}) : super(key: key);

  @override
  _PageViewScheduleVideoCallState createState() => _PageViewScheduleVideoCallState();
}

class _PageViewScheduleVideoCallState extends State<PageViewScheduleVideoCall> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: const Duration(milliseconds: 750), vsync: this);

    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 54.0,
              height: 54.0,
              child: Center(
                  child: AnimatedIcon(animation: animation)
              ),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle
              ),
            ),
            SizedBox(height: 30.0),
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
      'Schedule Video Call',
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _subTitle() {
    return Text(
      'Choose the date and time that you preferred, we will send you a link via email to make a video call on the scheduled date and time.',
      style: TextStyle(
        fontSize: 14.0
      ),
    );
  }
}

class AnimatedIcon extends AnimatedWidget {
  AnimatedIcon({
    Key? key,
    required Animation<double> animation
  }) : super(key: key, listenable: animation);

  final _iconSizeTween = Tween<double>(begin: 22.0, end: 28.0);
  final _containerSizeTween = Tween<double>(begin: 42.0, end: 54.0);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return Container(
      width: _containerSizeTween.evaluate(animation),
      height: _containerSizeTween.evaluate(animation),
      child: Icon(
        Icons.calendar_today,
        color: Colors.white,
        size: _iconSizeTween.evaluate(animation),
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle
      ),
    );
  }
}

class DateInput extends StatelessWidget {
  const DateInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    TextEditingController _controller = _signUpInherited.dateController;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: TextFormField(
        controller: _controller,
        readOnly: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          icon: Icon(
            Icons.calendar_today
          ),
          hintText: 'Date',
        ),
        onTap: _signUpInherited.onDateTap,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}

class TimeInput extends StatelessWidget {
  const TimeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          icon: Icon(
            Icons.access_time
          ),
          hintText: 'Time',
        ),
        onTap: () {}
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}
