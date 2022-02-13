//Added a placeholder of hospital list
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Pet service'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('โรงพยาบาลสัตว์อาขิ',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์เคบีเพ็ท',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('เอื้ออาทร สัตวแพทย์',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์ แกรนด์อเวนิว',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์ พระราม 2',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์ซอฟท์เซนส์',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                        ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์กัลปพฤกษ์',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์ใกล้หมอ',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์เอพลัส',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์ สาย1',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์บางกอก',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),
            Text('โรงพยาบาลสัตว์สมใจ',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Book for appointment'),
            ),

            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Go Back!'),
            ),
          ],
        ),
      ),
    );
  }
}