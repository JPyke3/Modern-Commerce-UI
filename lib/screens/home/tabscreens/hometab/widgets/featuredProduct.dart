import 'package:flutter/material.dart';

class FeaturedBubble extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final double width;
  final double height;

  FeaturedBubble(
      {Key key,
      this.title,
      this.image,
      @required this.width,
      @required this.height,
      @required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 50.0,
              spreadRadius: -45,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(35)),
            child: Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Text(subtitle,
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  Positioned(
                    top: 36,
                    left: 16,
                    child: Text(title,
                        style: TextStyle(color: Colors.white, fontSize: 24)),
                  ),
                ],
              ),
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromARGB(255, 66, 97, 178),
                    const Color.fromARGB(255, 33, 49, 89)
                  ],
                  tileMode: TileMode.repeated,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
