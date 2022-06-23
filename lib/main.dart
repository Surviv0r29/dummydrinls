import 'package:dummydrinks/Viewmodel/Drinks/drinks_view_model.dart';
import 'package:dummydrinks/Views/Drinks/drinks_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DrinksViewModel())],
      child: MaterialApp(
        title: 'Dummydrinks',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: DrinksListPage(),
      ),
    );
  }
}
