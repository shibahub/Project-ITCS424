import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:itcs_424/main.dart';
import 'package:itcs_424/screen/Add_product.dart';
import 'package:itcs_424/screen/detail.dart';
import 'package:itcs_424/screen/overview.dart';
import 'package:itcs_424/screen/cart.dart';
import 'package:itcs_424/screen/payment.dart';
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
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Cart'),
          //key: Icons.account_box,
          actions: [
            Icon(Icons.shopping_bag),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: _textEditingController!.text.isNotEmpty
                      ? ProductSearch!.length
                      : Product_cart.length,
                  itemBuilder: (ctx, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Flexible(
                            child: Row(
                              children: <Widget>[
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.pets_sharp),
                                Ink.image(
                                  image: AssetImage(
                                      _textEditingController!.text.isNotEmpty
                                          ? ProductSearch![index].imageUrl
                                          : Product_cart[index].imageUrl),
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  _textEditingController!.text.isNotEmpty
                                      ? ProductSearch![index].name
                                      : Product_cart[index].name +
                                          ': Price ${Product_cart[index].price} * ${Product_cart[index].quantity} = ${Product_cart[index].price * Product_cart[index].quantity} Baht',
                                overflow: TextOverflow.ellipsis,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    //final cart = widget.product();
                                    //Cart_detail.addItem();
                                    //final List<Decription> desciption = widget.product.decription;
                                    final _Cart_detail = new Cart_detail();
                                    //_Cart_detail.addToCart(CartItem.Cart_product., widget.product.imageUrl, widget.product.price, _sliderVal );
                                    _Cart_detail.removeProduct(
                                        Product_cart[index].name,
                                        Product_cart[index].imageUrl,
                                        Product_cart[index].price,
                                        Product_cart[index].quantity);
                                  },
                                  child: const Icon(Icons.cancel_outlined,
                                      size: 30),
                                )
                              ],
                            ),
                          ),
                          //textDirection:  Text('shiba')
                        ));
                  }),
            ),
            const Text("Total price"),
            Text((() {
              int totalPrice = 0;
              for (var i = 0; i < Product_cart.length; i++) {
                totalPrice += Product_cart[i].price;
              }
              
              return totalPrice.toString() + " Baht";
            })(),
            )
            ,
          ],
        ),
        //extendBody: Total_amout,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Payment())),
          child: const Icon(Icons.payments_outlined),
        ));
  }
}
