import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:itcs_424/main.dart';
import 'package:itcs_424/screen/Product_cart.dart';
import 'package:itcs_424/screen/detail.dart';
import 'package:itcs_424/screen/overview.dart';
import 'package:itcs_424/screen/cart.dart';
import 'package:itcs_424/screen/payment.dart';
import 'package:itcs_424/screen/cartscreen.dart';
//import 'package:itcs_424/screen/demo/cart.dart';

class Cart extends StatefulWidget {
  @override
  _Cart createState() => _Cart();
}

class _Cart extends State<Cart> {
  //List<Product>Product_cart= Product.samples;
  List<CartItem> Product_cart = CartItem.Cart_product;
  //List<Product>Pet_product_list= Productcart(name, imageUrl, decription, price, quantity);
  List<Product>? ProductSearch;
  final FocusNode _textFocusNode = FocusNode();
  final TextEditingController? _textEditingController = TextEditingController();

  get itembuilder => null;
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: cartscreen(),
      //bottomNavigationBar: Payment(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "${Product_cart.length} items",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
