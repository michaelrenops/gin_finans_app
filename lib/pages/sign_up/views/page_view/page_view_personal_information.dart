part of 'page_view.dart';

class PageViewPersonalInformation extends StatelessWidget {
  const PageViewPersonalInformation({Key? key}) : super(key: key);

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
      'Personal Information',
      style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _subTitle() {
    return Text(
      'Please fill in the information below and your goal for digital saving.',
      style: TextStyle(
          fontSize: 14.0
      ),
    );
  }
}

class GoalForActivation extends StatefulWidget {
  const GoalForActivation({Key? key}) : super(key: key);

  @override
  _GoalForActivationState createState() => _GoalForActivationState();
}

class _GoalForActivationState extends State<GoalForActivation> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MonthlyIncome extends StatefulWidget {
  const MonthlyIncome({Key? key}) : super(key: key);

  @override
  _MonthlyIncomeState createState() => _MonthlyIncomeState();
}

class _MonthlyIncomeState extends State<MonthlyIncome> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MonthlyExpenses extends StatefulWidget {
  const MonthlyExpenses({Key? key}) : super(key: key);

  @override
  _MonthlyExpensesState createState() => _MonthlyExpensesState();
}

class _MonthlyExpensesState extends State<MonthlyExpenses> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
