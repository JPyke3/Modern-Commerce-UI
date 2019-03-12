import 'package:flutter/material.dart';
import 'package:hybrismarketing/data/notifications.dart';

class NotificationTab extends StatelessWidget {
  NotificationTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Notifications",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            height: height - 167,
            width: width,
            child: FutureBuilder<List<Notifications>>(
              future: fetchNotifs(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Notifications>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          Divider(),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Icon(Icons.brightness_1,
                                      size: 16.0,
                                      color:
                                          Theme.of(context).primaryColorDark),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                        width: width - 100,
                                        child: Text(
                                          snapshot.data[index].notifName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subhead,
                                        )),
                                    Container(
                                        width: width - 100,
                                        child: Text(
                                          snapshot.data[index].notifDesc,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )),
                                  ],
                                ),
                                Text(snapshot.data[index].notifTime),
                              ],
                            ),
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
            ),
          ),
        ],
      ),
    );
  }
}
