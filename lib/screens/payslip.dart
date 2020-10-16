import 'package:flutter/material.dart';
import 'package:fun_app/styles.dart';

class PaySlipPage extends StatelessWidget {
  static const String id = "Payslip_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Text('Gross Pay'),
                      Text('Rs 10,000.00'),
                      SizedBox(height: 20),
                      Text('Deduction'),
                      Text('Rs 10,000.00'),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    // margin: const EdgeInsets.all(20.0),
                    height: 100,
                    width: 100,
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
                        Text('Rs 35,000.00')
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
