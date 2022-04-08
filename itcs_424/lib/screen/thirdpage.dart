import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itcs_424/main.dart';
import 'package:itcs_424/screen/detail.dart';
import 'package:itcs_424/screen/overview.dart';
import 'package:itcs_424/screen/result.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {

  List<Product>Pet_product_list= Product.samples;
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
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                focusNode: _textFocusNode,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search.....',
                    contentPadding: EdgeInsets.all(15)),
                onChanged: (value) {
                  setState(() {
                    ProductSearch = Pet_product_list
                        .where(
                            (element) => element.name.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        ProductSearch!.length == 0) {
                      print('foodListSearch length ${ProductSearch!.length}');
                    }
                  });
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: (){
                  ProductSearch?.clear();
                  _textEditingController!.clear();
                  setState((){
                    _textEditingController!.text='';
                  });
                },
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
                )
            ],
            ),
        body: _textEditingController!.text.isNotEmpty &&
                ProductSearch!.length == 0
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        /*child: Icon(
                          Icons.search_off,
                          size: 160,
                        ),*/
                        child: Ink.image(image: AssetImage('img/shibaNO.jpg'),
                        height: 300,
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'No results found </3,\nPlease try different keyword ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : ListView.builder(
                itemCount: _textEditingController!.text.isNotEmpty
                    ? ProductSearch!.length
                    : Pet_product_list.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children:[
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Builder(
                            builder: (context) {
                              return  ProductDetail(product: _textEditingController!.text.isNotEmpty
                              ? ProductSearch![index]
                              : Pet_product_list[index]);
                            }
                          )),);
                  
                        }, 
                          child: Icon(Icons.pets),),
                        /* CircleAvatar(
                            child: Icon(Icons.pets),
                          ),*/
                          SizedBox(
                            width: 10,
                          ),
                          Text(_textEditingController!.text.isNotEmpty
                              ? ProductSearch![index].name
                              : Pet_product_list[index].name),
                          
                          Ink.image(image: AssetImage(_textEditingController!.text.isNotEmpty
                              ? ProductSearch![index].imageUrl
                              : Pet_product_list[index].imageUrl),

                            height: 100,
                            width: 100,
                            fit:BoxFit.cover,
                            ),
                        ],)
                        
                        ,
                    )
                  );
                }));
  }
}