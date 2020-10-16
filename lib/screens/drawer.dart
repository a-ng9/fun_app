import 'package:flutter/material.dart';
import 'package:fun_app/Components/drawerList.dart';
import 'package:fun_app/screens/payslip.dart';
import 'package:fun_app/styles.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.33,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(82, 186, 197, 1),
            Color.fromRGBO(68, 144, 188, 1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.account_circle,
                    size: 60,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, John Doe",
                        style: kProfileText,
                      ),
                      Text("Today, Fri, 16 October", style: kProfileText)
                    ],
                  ),
                )
              ],
            ),
            Divider(
              indent: 40,
              endIndent: 40,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DrawerList(
                      icon: Icon(Icons.home_outlined, color: kDrawerIcon),
                      label: "Home",
                    ),
                    DrawerList(
                      icon: Icon(Icons.beach_access_sharp, color: kDrawerIcon),
                      label: "Leaves",
                    ),
                    DrawerList(
                      icon: Icon(Icons.description, color: kDrawerIcon),
                      label: "Vacancies",
                    ),
                    DrawerList(
                      icon: Icon(Icons.medical_services, color: kDrawerIcon),
                      label: "Medical Claim",
                    ),
                    DrawerList(
                      icon: Icon(Icons.chat, color: kDrawerIcon),
                      label: "Talk to us",
                    ),
                    DrawerList(
                      icon: Icon(Icons.timer, color: kDrawerIcon),
                      label: "Overtime",
                    ),
                    DrawerList(
                      icon:
                          Icon(Icons.format_list_bulleted, color: kDrawerIcon),
                      label: "Allowances",
                    ),
                    DrawerList(
                      icon: Icon(Icons.payments, color: kDrawerIcon),
                      label: "Pay Slip",
                      onPressed: () =>
                          Navigator.pushNamed(context, PaySlipPage.id),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              indent: 40,
              endIndent: 40,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            DrawerList(
              icon: Icon(Icons.logout, color: kDrawerIcon),
              label: "Log out",
            ),
          ],
        ),
      ),
    );
  }
}
