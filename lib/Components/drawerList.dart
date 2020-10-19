import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final Icon icon;
  final Text label;
  final Function onPressed;
  final Color currentColour;

  DrawerList({this.icon, this.label, this.onPressed, this.currentColour});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: currentColour,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        padding: const EdgeInsets.symmetric(vertical: 15),
        width: MediaQuery.of(context).size.width * 0.65,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: icon,
            ),
            Expanded(
              flex: 4,
              child: label,
            ),
          ],
        ),
      ),
    );
  }
}
