class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "333505a",
        image:
            "https://img5.gadgetsnow.com/gd/images/products/additional/large/G201788_View_1/mobiles/smartphones/apple-iphone-12-128-gb-red-6-gb-ram-.jpg")
  ];

  //Get item by Id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //Get item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  // Making class form map
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  // Making map form class
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
