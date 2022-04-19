import 'dart:html';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:itcs_424/screen/cart.dart';

//import 'package:itcs_424/screen/demo/cart_item.dart';

class CartItem {
  final String name;
  final String imageUrl;
  //final List<Decription> decription;
  final int price;
  final int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    //required this.decription,
    required this.price,
    required this.quantity,
  });
  static List<CartItem> Cart_product = [];
}

class Cart_detail with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  //get name => null;
  void addToCart(String name, String imageUrl, int price, int quantity) {
    print('Adding "$name" to cart...');
    String item = name;
    if (name != null && quantity != 0) {
      print('sucess to add');
      CartItem.Cart_product.insert(
          0,
          CartItem(
              name: name,
              imageUrl: imageUrl,
              price: price,
              quantity: quantity));
    } else {
      print('Flase to add');
    }
  }

  void removeProduct(
      String name, String imageUrl, int price, int quantit, int index) {
    print('Removing "${name}"......');
    if (name.isNotEmpty) {
      CartItem.Cart_product.removeAt(0);
      //CartItem.Cart_product.removeWhere(CartItem.Cart_product.);
      //CartItem.Cart_product.remove(name);
      print('remove sucess index ${index}');
    } else {
      print('False to remove');
    }
  }
}

class Decription {
  String measure;
  String name;

  Decription(
    this.measure,
    this.name,
  );
}
