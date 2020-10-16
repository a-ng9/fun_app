import 'package:flutter/material.dart';
import 'package:fun_app/Components/drawerList.dart';
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
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      label: "Home",
                    ),
                    DrawerList(
                      icon: Icon(
                        Icons.beach_access_sharp,
                        color: Colors.white,
                      ),
                      label: "Leaves",
                    ),
                    DrawerList(
                      icon: Icon(
                        Icons.description,
                        color: Colors.white,
                      ),
                      label: "Vacancies",
                    ),
                    DrawerList(
                      icon: Icon(
                        Icons.medical_services,
                        color: Colors.white,
                      ),
                      label: "Medical Claim",
                    ),
                    DrawerList(
                      icon: Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                      label: "Talk to us",
                    ),
                    DrawerList(
                      icon: Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      label: "Overtime",
                    ),
                    DrawerList(
                      icon: Icon(
                        Icons.format_list_bulleted,
                        color: Colors.white,
                      ),
                      label: "Allowances",
                    ),
                    DrawerList(
                      icon: Icon(
                        Icons.payments,
                        color: Colors.white,
                      ),
                      label: "Pay Slip",
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
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              label: "Log out",
            ),
          ],
        ),
      ),
    );
  }
}
