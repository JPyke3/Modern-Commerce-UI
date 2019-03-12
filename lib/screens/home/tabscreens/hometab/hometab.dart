import 'package:flutter/material.dart';
import 'package:hybrismarketing/screens/home/tabscreens/hometab/widgets/featuredProduct.dart';

class HomeTab extends StatelessWidget {
  final Widget child;

  HomeTab({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
              child: Text(
                "Featured Product",
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),
          FeaturedBubble(
            width: width - 36,
            height: 500,
            title: "Product 1",
            subtitle: "The Most Amazing Thing Ever",
          ),
          Divider(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
              child: Text(
                "Other Products To Lookout For!",
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),
          Container(
            height: 500,
            width: 1000,
            child: ListView(
              padding: EdgeInsets.only(top: 36, bottom: 36),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FeaturedBubble(
                  width: width-90,
                  height: 400,
                  title: "Product 2",
                  subtitle: "The Most Amazing Thing Ever",
                ),
                FeaturedBubble(
                  width: width-90,
                  height: 400,
                  title: "Product 3",
                  subtitle: "The Most Amazing Thing Ever",
                ),
                FeaturedBubble(
                  width: width-90,
                  height: 400,
                  title: "Product 4",
                  subtitle: "The Most Amazing Thing Ever",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
