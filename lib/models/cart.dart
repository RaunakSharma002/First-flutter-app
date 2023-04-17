import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

  //collection of id
  final List<dynamic> _itemIds = [];

  //Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get item in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // //Add item
  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  //Remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation(
    this.item,
  );
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}
