import 'package:dummydrinks/Models/Drinks/drinks_List_model.dart';
import 'package:dummydrinks/Viewmodel/Drinks/drinks_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinksDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DrinksViewModel drinksViewModel = context.watch<DrinksViewModel>();
    Drink drink = drinksViewModel.drinkModel;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  "${drink.strDrinkThumb}",
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    }
                  },
                ),
              ),
              Text(
                "Drink Name: ${drink.strDrink}",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Drink Category: ${drink.strCategory}",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Drink is Alcoholic: ${drink.strAlcoholic}",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Glass: ${drink.strGlass}",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Description: \nDutch:${drink.strInstructionsDe} \n English:${drink.strInstructionsEs} \n France:${drink.strInstructionsFr} \n Italy ${drink.strInstructionsIt}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
