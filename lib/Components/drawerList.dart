import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onPressed;

  DrawerList({this.icon, this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: icon,
            ),
            Expanded(
              flex: 4,
              child: Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
