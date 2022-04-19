import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:itcs_424/screen/Product_cart.dart';
import 'package:itcs_424/screen/payment.dart';

class cartscreen extends StatefulWidget {
  @override
  _cartscreen createState() => _cartscreen();
}

class _cartscreen extends State<cartscreen> {
  @override
  List<CartItem> Product_cart = CartItem.Cart_product;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Product_cart.length,
              itemBuilder: (ctx, index) => Dismissible(
                  key: Key(Product_cart[index].name),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    final _Cart_detail = new Cart_detail();
                    _Cart_detail.removeProduct(
                        Product_cart[index].name,
                        Product_cart[index].imageUrl,
                        Product_cart[index].price,
                        Product_cart[index].quantity,
                        index);
                  },
                  background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFE6E6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.cancel_outlined),
                        ],
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 88,
                        child: AspectRatio(
                          aspectRatio: 0.88,
                          child: Container(
                            padding: EdgeInsets.all((10)),
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F6F9),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(Product_cart[index].imageUrl),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Product_cart[index].name,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            maxLines: 2,
                          ),
                          SizedBox(height: 10),
                          Text.rich(
                            TextSpan(
                              text: "\$${Product_cart[index].price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.pink),
                              children: [
                                TextSpan(
                                    text: " x${Product_cart[index].quantity}",
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            width: 1000,
            height: 100,
            child: Container(
              color: Colors.blue,
              child: Column(
                children: [
                  const Text(
                    "Total Price:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    (() {
                      int totalPrice = 0;
                      for (var i = 0; i < Product_cart.length; i++) {
                        totalPrice +=
                            Product_cart[i].price * Product_cart[i].quantity;
                      }

                      return totalPrice.toString() + " Baht";
                    })(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  /*ElevatedButton(onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Payment())),  child: const Icon(Icons.payments_outlined, size: 20, color: Colors.white,))*/
                  FloatingActionButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Payment())),
                    child: const Icon(
                      Icons.payments_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
