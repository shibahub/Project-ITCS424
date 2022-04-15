

import 'package:flutter/material.dart';
import 'package:itcs_424/screen/Add_product.dart';
import 'package:itcs_424/screen/overview.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductDetailState createState() {
    return _ProductDetailState();
  }
}

// TODO: Add _RecipeDetailState here
class _ProductDetailState extends State<ProductDetail> {
  // TODO: Add _sliderVal here
  int _sliderVal = 1;


  @override
  Widget build(BuildContext context) {
    // 1
    //final cart = ProductDetail<Product>(context);
   // final productId = ModalRoute.of(context)?.settings.arguments as String;
    //final loadedPdt = Provider.of<Product>(context).findById(productId);
   // final cart = Provider.of<Cart>(context);
    //final cart = CartItem(name: widget.product.name, imageUrl: widget.product.imageUrl , decription: widget.product.decription, price: widget.product.price, quantity: _sliderVal);
    final Price = widget.product.price;
    const Total=0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.product.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.product.name,
              style: const TextStyle(fontSize: 18),
            ),

            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.product.decription.length,
                itemBuilder: (BuildContext context, int index) {
                  final Decription = widget.product.decription[index];
                  

                  return Text(
                      ' ${Decription.measure} : ${Decription.name}');
                      

                },
              ),
            ),
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                //final Price = widget.product.price;

                  return Text(
                      ' Price :${Price} Baht <3');
                      

                },
              ),
            ),
            
            Slider(
              // 10
              min: 0,
              max: 10,
              divisions: 9,
              // 11
              label: '${_sliderVal * widget.product.price} BAHT',
              
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
             
            ),

// edit here **********************************************************************************************************/
            FloatingActionButton(
              onPressed: (){
               //final cart = widget.product();
               //Cart_detail.addItem();
               //final List<Decription> desciption = widget.product.decription; 
               final _Cart_detail= new  Cart_detail();
               _Cart_detail.addToCart(widget.product.name, widget.product.imageUrl, widget.product.price, _sliderVal );
                
              },
              child: Icon(
                Icons.shopping_cart,
                size:30),
              )
//******************************************************************************************************************************* */
          ],
        ),
      ),
    );
  }
}
class Decription{
  String measure;
  String name;

  Decription(
      this.measure,
      this.name,
      );


}

