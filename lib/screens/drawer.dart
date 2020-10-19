import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fun_app/Components/drawerList.dart';
import 'package:fun_app/main.dart';
import 'package:fun_app/screens/homePage.dart';
import 'package:fun_app/screens/payslip.dart';
import 'package:fun_app/styles.dart';

class CustomDrawer extends StatelessWidget {
  final String currentPage;

  CustomDrawer({this.currentPage});

  @override
  Widget build(BuildContext context) {
    //currentDrawer variable to check which current page the user in.
    //This variable will allow to show the selected(current) page and modify the style
    var currentDrawer = Provider.of<DrawerStateInfo>(context).getCurrentDrawer;

    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      height: MediaQuery.of(context).size.height,
      //BoxDecoration to decorate the drawer with a gradient
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        style:
                            kProfileText.copyWith(fontWeight: FontWeight.bold),
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
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///////Home Button///////
                    DrawerList(
                      currentColour: currentDrawer == 1
                          ? kDrawerIconLabel
                          : Colors.transparent,
                      icon: Icon(
                        Icons.home_outlined,
                        color: currentDrawer == 1
                            ? Colors.black
                            : kDrawerIconLabel,
                      ),
                      label: Text(
                        "Home",
                        //currentDrawer will have a unique number for each page
                        style: currentDrawer == 1
                            ? TextStyle(color: Colors.black)
                            : TextStyle(color: kDrawerIconLabel),
                      ),
                      onPressed: () {
                        //need to pop the navigator to dispose and reset the currentDrawer
                        Navigator.of(context).pop();
                        if (this.currentPage == "Home") return;

                        //This provider function will set the currentDrawer to 0.
                        //Here 0 represents the Home page
                        Provider.of<DrawerStateInfo>(context, listen: false)
                            .setCurrentDrawer(1);

                        //This is a normal Navigator function to redirect the user to the destination as mention below with their id
                        Navigator.pushReplacementNamed(context, HomePage.id);
                      },
                    ),
                    /////Leaves Button///////
                    DrawerList(
                      currentColour: currentDrawer == 2
                          ? kDrawerIconLabel
                          : Colors.transparent,
                      icon: Icon(
                        Icons.beach_access_sharp,
                        color: currentDrawer == 2
                            ? Colors.black
                            : kDrawerIconLabel,
                      ),
                      label: Text(
                        "Leaves",
                        style: currentDrawer == 2
                            ? TextStyle(color: Colors.black)
                            : TextStyle(color: kDrawerIconLabel),
                      ),
                    ),
                    /////Vacancies Button///////
                    DrawerList(
                      currentColour: currentDrawer == 3
                          ? kDrawerIconLabel
                          : Colors.transparent,
                      icon: Icon(
                        Icons.description,
                        color: currentDrawer == 3
                            ? Colors.black
                            : kDrawerIconLabel,
                      ),
                      label: Text(
                        "Vacancies",
                        style: currentDrawer == 3
                            ? TextStyle(color: Colors.black)
                            : TextStyle(color: kDrawerIconLabel),
                      ),
                    ),
                    /////Medical Claim Button///////
                    DrawerList(
                      currentColour: currentDrawer == 4
                          ? kDrawerIconLabel
                          : Colors.transparent,
                      icon: Icon(
                        Icons.medical_services,
                        color: currentDrawer == 4
                            ? Colors.black
                            : kDrawerIconLabel,
                      ),
                      label: Text(
                        "Medical Claim",
                        style: currentDrawer == 4
                            ? TextStyle(color: Colors.black)
                            : TextStyle(color: kDrawerIconLabel),
                      ),
                    ),
                    /////Talk to us Button///////
                    DrawerList(
                      currentColour: currentDrawer == 5
                          ? kDrawerIconLabel
                          : Colors.transparent,
                      icon: Icon(
                        Icons.chat,
                        color: currentDrawer == 5
                            ? Colors.black
                            : kDrawerIconLabel,
                      ),
                      label: Text(
                        "Talk to us",
                        style: currentDrawer == 5
                            ? TextStyle(color: Colors.black)
                            : TextStyle(color: kDrawerIconLabel),
                      ),
                    ),
                    /////Overtime Button///////
                    DrawerList(
                      currentColour: currentDrawer == 6
                          ? kDrawerIconLabel
                          : Colors.transparent,
                      icon: Icon(
                        Icons.timer,
                        color: currentDrawer == 6
                            ? Colors.black
                            : kDrawerIconLabel,
                      ),
                      label: Text(
                        "Overtime",
                        style: currentDrawer == 6
                            ? TextStyle(color: Colors.black)
                            : TextStyle(color: kDrawerIconLabel),
                      ),
                    ),
                    /////Allowance Button///////
                    DrawerList(
                      currentColour: currentDrawer == 7
                          ? kDrawerIconLabel
                          : Colors.transparent,
                      icon: Icon(
                        Icons.format_list_bulleted,
                        color: currentDrawer == 7
                            ? Colors.black
                            : kDrawerIconLabel,
                      ),
                      label: Text(
                        "Allowances",
                        style: currentDrawer == 7
                            ? TextStyle(color: Colors.black)
                            : TextStyle(color: kDrawerIconLabel),
                      ),
                    ),
                    /////Pay Slip Button///////
                    DrawerList(
                        //currentDrawer will have a unique number for each page
                        currentColour: currentDrawer == 8
                            ? kDrawerIconLabel
                            : Colors.transparent,
                        icon: Icon(
                          Icons.payments,
                          color: currentDrawer == 8
                              ? Colors.black
                              : kDrawerIconLabel,
                        ),
                        label: Text(
                          "Pay Slip",
                          //currentDrawer will have a unique number for each page
                          style: currentDrawer == 8
                              ? TextStyle(color: Colors.black)
                              : TextStyle(color: kDrawerIconLabel),
                        ),
                        onPressed: () {
                          //Dispose of previous pages
                          Navigator.of(context).pop();
                          if (this.currentPage == "Payslip") return;

                          //setting the currentDrawer a 8
                          Provider.of<DrawerStateInfo>(context, listen: false)
                              .setCurrentDrawer(8);

                          //Navigates to the desired page
                          Navigator.pushReplacementNamed(
                              context, PaySlipPage.id);
                        }),
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
              icon: Icon(Icons.logout, color: kDrawerIconLabel),
              label: Text(
                "Log out",
                style: currentDrawer == 9
                    ? TextStyle(color: Colors.black)
                    : TextStyle(color: kDrawerIconLabel),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
