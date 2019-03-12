import 'package:flutter/material.dart';
import 'package:hybrismarketing/screens/home/tabscreens/accounttab/accounttab.dart';
import 'package:hybrismarketing/screens/home/tabscreens/hometab/hometab.dart';
import 'package:hybrismarketing/screens/home/tabscreens/notificationtab/notificationtab.dart';
import 'package:hybrismarketing/screens/home/tabscreens/searchtab/searchtab.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  final Widget child;

  Home({Key key, this.child}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int page = 0;

  TabController _controller;

  void prefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool test = prefs.get("SlideShowDone");
    if (!test) {
      Navigator.pushReplacementNamed(context, "/SlideShow");
    }
  }

  void initState() {
    super.initState();
    prefs();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          children: <Widget>[
            HomeTab(),
            SearchTab(),
            NotificationTab(),
            AccountTab(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).canvasColor,
        selectedItemColor: Theme.of(context).accentColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: page,
        onTap: (int) {
          _controller.animateTo(int);
          setState(() {
            page = int;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(OMIcons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
              icon: Icon(OMIcons.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Stack(children: <Widget>[
                Icon(OMIcons.notifications),
                Positioned(
                  // draw a red marble
                  top: 0.0,
                  right: 0.0,
                  child: Icon(Icons.brightness_1,
                      size: 8.0, color: Theme.of(context).primaryColorDark),
                )
              ]),
              title: Text("Notifications")),
          BottomNavigationBarItem(
              icon: Icon(OMIcons.accountCircle), title: Text("Search")),
        ],
      ),
    );
  }
}
