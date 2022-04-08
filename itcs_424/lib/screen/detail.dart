import 'package:flutter/material.dart';
import 'package:itcs_424/screen/overview.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      // 2
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
            // TODO: Add Expanded
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.product.decription.length,
                itemBuilder: (BuildContext context, int index) {
                  final Decription = widget.product.decription[index];
                  final Price = widget.product.price;
                  // 9
                  // TODO: Add ingredient.quantity
                  return Text(
                      ' ${Decription.measure} : ${Decription.name} \n Price: ${Price} Baht');
                      

                },
              ),
            ),
            // TODO: Add Slider() here
            
            Slider(
              // 10
              min: 0,
              max: 10,
              divisions: 9,
              // 11
              label: '${_sliderVal } items',
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

          ],
        ),
      ),
    );
  }
}

