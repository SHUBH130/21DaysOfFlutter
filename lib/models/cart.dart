import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  //catalog field
  late CatalogModel catalog;

  //collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // CatalogModel get catalog => _catalog;

  // set catalog(CatalogModel newCatalog) {
  //   assert(newCatalog != null);
  //   _catalog = newCatalog;
  // }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
