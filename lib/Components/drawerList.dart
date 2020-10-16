import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final Icon icon;
  final String label;

  DrawerList({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
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
    );
  }
}
