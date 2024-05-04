//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
//  Import FILES
// import 'features/screens/categories_screen.dart';
import 'features/screens/tabs_screen.dart';
// import 'data/dummy_data.dart';
// import 'features/screens/meals_screen.dart';
//  PARTS
//  PROVIDERS
//  //   ///

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color.fromARGB(255, 131, 57, 0),
        ),
        textTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: true,
      ),
      // home: const CategoriesScreen(),
      home: const TabsScreen(),
      // home: const MealsScreen(title: 'Some category ...', meals: []),
      // home: const MealsScreen(title: 'Some category ...', meals: dummyMeals),
    );
  }
}





//  //   ///
//  Import LIBRARIES
//  Import FILES
//  PARTS
//  PROVIDERS
//  //   ///