import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final double width;

  SearchBar({Key key, @required this.width}) : super(key: key);

  @override
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
              blurRadius: 30.0,
              spreadRadius: -30,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(35)),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search),
                    Container(height: 20, width: width-70, child: TextField(
                      decoration:InputDecoration.collapsed(
                        hintText: ""
                      ),
                    )),
                  ],
                ),
              ),
              width: width,
              height: 60,
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
