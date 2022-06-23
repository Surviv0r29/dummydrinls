import 'package:dummydrinks/Views/Drinks/drinks_detail_page.dart';
import 'package:flutter/material.dart';

void NavigateDetailspage(context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (_) => DrinksDetailPage()));
}
