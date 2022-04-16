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
      /*_items.update(name, (value) => CartItem
        (
          name: name, 
          imageUrl: imageUrl, 
          //decription: decription, 
          price: price, 
          quantity: quantity,));*/
    } else {
      print('Flase to add');
    }
  }

  void removeProduct(String name, String imageUrl, int price, int quantit, int index) {
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
  // void removeFromCart()
  /*void addItem(String name, String imageUrl, List<Decription> description , int price, int quantity) {
    if (_items.containsKey(name)) {
      _items.update(
          name,
          (existingCartItem) => CartItem(
              name: existingCartItem.name,
              quantity: existingCartItem.quantity + 1,
              price: existingCartItem.price, 
              imageUrl: '', 
              decription: []
            )
        );
    } else {
      _items.putIfAbsent(
          name,
          () => CartItem(
                name: name,
                //ame: DateTime.now().toString(),
                quantity: 1,
                price: price,
                imageUrl: '',
                decription: [],
              ));
    }
    notifyListeners();
  }

  void removeItem(String name) {
    _items.remove(name);
    notifyListeners();
  }

  void removeSingleItem(String name) {
    if (!_items.containsKey(name)) {
      return;
    }
    if ((_items[name]?.quantity)! > 1) {
      _items.update(
          name,
          (existingCartItem) => CartItem(
              name: existingCartItem.name,
              //name: DateTime.now().toString(),
              //imageUrl: existingCartItem.,
              quantity: existingCartItem.quantity + 1,
              price: existingCartItem.price, 
              imageUrl: '', 
              decription: []));
    }
    notifyListeners();
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
  */
}

class Decription {
  String measure;
  String name;

  Decription(
    this.measure,
    this.name,
  );
}
