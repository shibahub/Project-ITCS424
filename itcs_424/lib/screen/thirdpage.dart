import 'package:flutter/material.dart';
import 'package:itcs_424/main.dart';
import 'package:itcs_424/screen/detail.dart';
import 'package:itcs_424/screen/overview.dart';
import 'package:itcs_424/screen/test.dart';

class thirdRoute extends StatelessWidget {
  const thirdRoute({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'PetMarkShop',
      // 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.blue,
          secondary: Colors.blue,
        ),
      ),
      // 6
      home: const MyHomePage(title: 'PetMarkShop '),
      
      
      
    );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        // 4
        child: Container(
          child:Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Search for more item',
                )
              ),
              ElevatedButton(
                child: const Text('Search'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Result()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red
                ),
              ),
              
              ElevatedButton(
                child: const Text("Return to Home page"),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstRoute()));
              },
              )
          ],
          )
          // 5

        ),

      ),
    );
    
  }
  Widget buildRecipeCard(Recipe recipe) {
    // 1
    return Card(
      // 2
      child: Column(
        // 3
        children: <Widget>[
          // 4
          Image(image: AssetImage(recipe.imageUrl)),
          // 5
          Text(recipe.label),
        ],
      ),
    );
  }

  
}
