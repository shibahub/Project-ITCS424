//Added a placeholder of map
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:itcs_424/main.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Regristation',
                style: Theme.of(context).textTheme.headline4,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Sername',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                hintText: 'Date of birth',
              )),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Phone number',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: const Text('Regrister'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstRoute()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
