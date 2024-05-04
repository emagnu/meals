//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'categories_screen.dart';
import 'meals_screen.dart';
//  PARTS
//  PROVIDERS
//  //   ///

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String activePageTitle = 'Categories';

    Widget activePage = const CategoriesScreen();
    if (_selectedPageIndex == 1) {
      // activePage = const MealsScreen(title: 'Favourites', meals: []);
      activePage = const MealsScreen(meals: []);
      activePageTitle = 'Your Favourites';
    }

    return Scaffold(
      appBar: AppBar(
        // title: const Text('dynamic ...'),
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage, //(index) {debugPrint('index: $index');},
        currentIndex: _selectedPageIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites')
        ],
      ),
    );
  }
}
