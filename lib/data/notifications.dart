class Notifications {
  final String notifName;
  final String notifDesc;
  final String notifTime;

  Notifications(this.notifName, this.notifDesc, this.notifTime);
}

Future<List<Notifications>> fetchNotifs() async {
  List<Notifications> data = [];
  data = [
    Notifications(
        "New Flash Sale! 5 Mins Only!",
        "New flash sale on all fridge products. Everything 20% off for 5 Mins!",
        "14:32")
  ];
  return data;
}
