import 'package:flutter/material.dart';

class Styles {
  static gradientAppBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(42, 145, 190, 1),
            Color.fromRGBO(44, 185, 196, 1)
          ],
          stops: [0.5, 1.0],
        ),
      ),
    );
  }
}

const kProfileText = TextStyle(color: kDrawerIcon);
const kDrawerIcon = Colors.white;
