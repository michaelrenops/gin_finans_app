part of 'page_view.dart';

class PageViewScheduleVideoCall extends StatefulWidget {
  const PageViewScheduleVideoCall({Key? key}) : super(key: key);

  @override
  _PageViewScheduleVideoCallState createState() => _PageViewScheduleVideoCallState();
}

class _PageViewScheduleVideoCallState extends State<PageViewScheduleVideoCall> {
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
