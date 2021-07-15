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
            SizedBox(height: 30.0),
            GoalForActivation(),
            SizedBox(height: 20.0),
            MonthlyIncome(),
            SizedBox(height: 20.0),
            MonthlyExpenses()
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
  List<String> _items = ['- Choose Option -', 'Goal 1', 'Goal 2', 'Goal 3', 'Goal 4', 'Goal 5'];

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    String _value = _signUpInherited.goalForActivation;

    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Goal for activation',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey
            ),
          ),
          DropdownButton<String>(
            value: _value,
            hint: Text('- Choose Option -'),
            icon: Icon(Icons.keyboard_arrow_down),
            isExpanded: true,
            elevation: 1,
            underline: Container(),
            items: _items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
                onTap: () {
                  if (value != '- Choose Option -') {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              );
            }).toList(),
            onChanged: _signUpInherited.onChangedGoalForActivation,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      )
    );
  }
}

class MonthlyIncome extends StatefulWidget {
  const MonthlyIncome({Key? key}) : super(key: key);

  @override
  _MonthlyIncomeState createState() => _MonthlyIncomeState();
}

class _MonthlyIncomeState extends State<MonthlyIncome> {
  List<String> _items = ['- Choose Option -', 'Less than 1.000.000', 'Between 1.000.001 and 5.000.000', 'Between 5.000.001 and 10.000.000', 'Between 10.000.001 and 20.000.000', 'More than 20.000.001'];

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    String _value = _signUpInherited.monthlyIncome;

    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Monthly Income',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey
            ),
          ),
          DropdownButton<String>(
            value: _value,
            hint: Text('- Choose Option -'),
            icon: Icon(Icons.keyboard_arrow_down),
            isExpanded: true,
            elevation: 1,
            underline: Container(),
            items: _items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
                onTap: () {
                  if (value != '- Choose Option -') {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              );
            }).toList(),
            onChanged: _signUpInherited.onChangedMonthlyIncome,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      )
    );
  }
}

class MonthlyExpenses extends StatefulWidget {
  const MonthlyExpenses({Key? key}) : super(key: key);

  @override
  _MonthlyExpensesState createState() => _MonthlyExpensesState();
}

class _MonthlyExpensesState extends State<MonthlyExpenses> {
  List<String> _items = ['- Choose Option -', 'Less than 1.000.000', 'Between 1.000.001 and 5.000.000', 'Between 5.000.001 and 10.000.000', 'Between 10.000.001 and 20.000.000', 'More than 20.000.001'];

  @override
  Widget build(BuildContext context) {
    SignUpInherited _signUpInherited = SignUpInherited.of(context);
    String _value = _signUpInherited.monthlyExpenses;

    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Monthly Expenses',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey
            ),
          ),
          DropdownButton<String>(
            value: _value,
            hint: Text('- Choose Option -'),
            icon: Icon(Icons.keyboard_arrow_down),
            isExpanded: true,
            elevation: 1,
            underline: Container(),
            items: _items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
                onTap: () {
                  if (value != '- Choose Option -') {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              );
            }).toList(),
            onChanged: _signUpInherited.onChangedMonthlyExpenses,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      )
    );
  }
}
