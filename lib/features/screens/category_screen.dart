//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//  Import FIILES
//  PARTS
//  PROVIDERS
//  //   ///

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your favourite meal categorys'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        children: const <Widget>[
          Text(
            'Text item 1',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 2',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 3',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 4',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 5',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 6',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 7',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 8',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 9',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 10',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 11',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Text item 12',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
