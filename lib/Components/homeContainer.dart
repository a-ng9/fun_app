import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final AssetImage image;
  final String title;
  final Function onPressed;

  const HomeContainer({this.image, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        splashColor: Colors.black,
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white,
                      Color.fromRGBO(1, 1, 1, .9),
                    ],
                  ).createShader(bounds);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: image,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  width: double.infinity,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                constraints: const BoxConstraints(minWidth: 0),
                width: double.infinity,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Material(
                      color: Colors.transparent,
                      shape: CircleBorder(
                        side: BorderSide(
                          //width: 1.5,
                          color: Colors.orange[700],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.orange[700],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
