class Fridges {
  final String productName;
  final String productDesc;
  final String productPrice;

  Fridges(this.productName, this.productDesc, this.productPrice);
}

class Grills {
  final String productName;
  final String productDesc;
  final String productPrice;

  Grills(this.productName, this.productDesc, this.productPrice);
}

Future<List<Fridges>> fetchFridges() async {
  List<Fridges> data = [];
  data = [
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("Fridgey McFridgeFace",
        "This is a pretty cool fridge, even includes a face on it", "€230"),
    Fridges(
        "FAL9000", "I'm sorry dave, I'm afraid I cant let you do that", "€450"),
    Fridges(
        "FridgeBook",
        "This is the fridge that we sell at a markup for no apparent reason",
        "€999"),
    Fridges("Fridgle II", "This product will revolutionize 80s", "€100"),
    Fridges(
        "iFridge Touch",
        "With a brand new touch screen included. Of course there is no stylus \"Beacuse Who wants a stylus?\"",
        "€220"),
    Fridges(
        "FridgeBook Air",
        "We have no idea why, but this thing will sell. It will sell like crazy",
        "€110"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
    Fridges("FridgeOMatic 500", "This is the top spec fridge we sell", "€300"),
  ];
  return data;
}

Future<List<Grills>> fetchGrills() async {
  List<Grills> data = [];
  data = [
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
    Grills("GrillOMatic 500", "This is a pretty sick grill man", "€300"),
  ];
  return data;
}
