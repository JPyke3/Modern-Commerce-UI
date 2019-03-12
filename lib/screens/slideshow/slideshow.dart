import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SlideShow extends StatefulWidget {
  
  final Widget child;

  SlideShow({Key key, this.child}) : super(key: key);

  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  List<Slide> slides = new List();

  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "Interesting Title 1",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "images/photo_eraser.png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "Interesting Title 2",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "images/photo_pencil.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "Interesting Title 3",
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "images/photo_ruler.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Navigator.pushReplacementNamed(context, "/Home");
    updatePref();
  }

  updatePref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("SlideShowDone", true);
  }

  void onSkipPress() {
    Navigator.pushReplacementNamed(context, "/Home");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      onSkipPress: this.onSkipPress,
    );
  }
}