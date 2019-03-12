import 'package:flutter/material.dart';
import 'package:hybrismarketing/data/products.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:hybrismarketing/screens/home/tabscreens/searchtab/widgets/searchbar.dart';

class SearchTab extends StatefulWidget {
  SearchTab({Key key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab>
    with SingleTickerProviderStateMixin {
  TabController _searchTabController;

  void initState() {
    super.initState();
    _searchTabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: <Widget>[
            TabBarView(
              controller: _searchTabController,
              children: <Widget>[
                FridgeTab(),
                GrillTab(),
              ],
            ),
            SafeArea(
              child: Column(
                children: <Widget>[
                  SearchBar(
                    width: width,
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,
                    child: TabBar(
                      controller: _searchTabController,
                      labelColor: Colors.white,
                      unselectedLabelColor: Theme.of(context).primaryColorDark,
                      tabs: <Widget>[Text("Fridges"), Text("Grills")],
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BubbleTabIndicator(
                        indicatorColor: Theme.of(context).primaryColorDark,
                        indicatorHeight: 25.0,
                        tabBarIndicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FridgeTab extends StatelessWidget {
  final Widget child;

  FridgeTab({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Fridges>>(
      future: fetchFridges(),
      builder: (BuildContext context, AsyncSnapshot<List<Fridges>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            padding: EdgeInsets.only(top: 170),
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  Divider(),
                  ListTile(
                    title: Text(snapshot.data[index].productName),
                    subtitle: Text(snapshot.data[index].productDesc),
                    trailing: Text(snapshot.data[index].productPrice),
                  ),
                ],
              );
            },
          );
        } else {
          return Container(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class GrillTab extends StatelessWidget {
  final Widget child;

  GrillTab({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Grills>>(
      future: fetchGrills(),
      builder: (BuildContext context, AsyncSnapshot<List<Grills>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            padding: EdgeInsets.only(top: 170),
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  Divider(),
                  ListTile(
                    title: Text(snapshot.data[index].productName),
                    subtitle: Text(snapshot.data[index].productDesc),
                    trailing: Text(snapshot.data[index].productPrice),
                  ),
                ],
              );
            },
          );
        } else {
          return Container(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
