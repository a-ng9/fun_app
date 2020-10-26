import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

import 'package:fun_app/screens/drawer.dart';
import 'package:fun_app/styles.dart';

class PaySlipPage extends StatefulWidget {
  // final DateTime initialDate;

  static const String id = "Payslip_screen";

  //const PaySlipPage({Key key, this.initialDate}) : super(key: key);

  @override
  _PaySlipPageState createState() => _PaySlipPageState();
}

class _PaySlipPageState extends State<PaySlipPage> {
  DateTime selectedDate;

  @override
  void initState() {
    super.initState();

    // selectedDate = widget.initialDate;
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Payslip'),
        flexibleSpace: Styles.gradientAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            //Date button
            OutlineButton(
              borderSide: BorderSide(
                  width: 1, color: Color.fromRGBO(76, 191, 214, 1.0)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                showMonthPicker(
                  context: context,
                  firstDate: DateTime(DateTime.now().year - 1, 5),
                  lastDate: DateTime(DateTime.now().year + 1, 9),
                  initialDate: selectedDate,
                  locale: Locale("en"),
                ).then((date) {
                  if (date != null) {
                    setState(() {
                      selectedDate = date;
                    });
                  }
                });
              },
              child: Text('${selectedDate.month}, ${selectedDate?.year}'),
            ),
            //Summary blue card
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(76, 191, 214, 1.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Gross Pay', style: kPayslipCard),
                        Text('Rs 10,000.00', style: kPayslipCard),
                        SizedBox(height: 20),
                        Text('Deduction', style: kPayslipCard),
                        Text('Rs 10,000.00', style: kPayslipCard),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('NetPay'),
                          SizedBox(height: 15),
                          Text('0')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
