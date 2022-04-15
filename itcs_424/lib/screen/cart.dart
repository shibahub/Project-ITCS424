import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  List<CartItem>Product_cart= CartItem.Cart_product;
  //List<Product>Pet_product_list= Productcart(name, imageUrl, decription, price, quantity);
  List<Product>?ProductSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
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
            title: Text('Cart'),
            //key: Icons.account_box,
          actions: [
            Icon(Icons.shopping_bag),
          ],
        ) ,
        body:ListView.builder(
                itemCount: _textEditingController!.text.isNotEmpty
                    ? ProductSearch!.length
                    : Product_cart.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
    
                        children: <Widget>[
                       
                        /* CircleAvatar(
                            child: Icon(Icons.pets),
                          ),*/
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.pets_sharp),
                          Ink.image(image: AssetImage(_textEditingController!.text.isNotEmpty
                              ? ProductSearch![index].imageUrl
                              : Product_cart[index].imageUrl),
                    

                            height: 50,
                            width: 50,
                            fit:BoxFit.cover,
                            ),
                          Text(_textEditingController!.text.isNotEmpty
                              ? ProductSearch![index].name
                              : Product_cart[index].name
                             + ': Price ${Product_cart[index].price} * ${Product_cart[index].quantity} = ${Product_cart[index].price*Product_cart[index].quantity} Baht' ),
                          
                          
                        
                            
                        ],
                        
                        
                        ),
                      //textDirection:  Text('shiba')
                    
                    )
                    
                  );
 
                }

                ),
                
                
                floatingActionButton: FloatingActionButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Payment())), 
                  child: Icon(Icons.payments_outlined),)
                
                );
  }
  int get Total_amout{
    int total_sum=0;
    for (var i=0; i<(CartItem.Cart_product.length);i++){
      total_sum+=(CartItem.Cart_product[i].price*CartItem.Cart_product[i].quantity);
    }
    return total_sum;
  }
}
