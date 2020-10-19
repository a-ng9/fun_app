import 'package:flutter/material.dart';
import 'package:fun_app/screens/drawer.dart';
import 'package:fun_app/styles.dart';

class PaySlipPage extends StatelessWidget {
  static const String id = "Payslip_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Payslip'),
        flexibleSpace: Styles.gradientAppBar(),
      ),
      body: Column(
        children: [
          OutlineButton(
            borderSide:
                BorderSide(width: 1, color: Color.fromRGBO(76, 191, 214, 1.0)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {},
            child: Text('August, 2020'),
          ),
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
                        Text('Rs 35,0000.00')
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
