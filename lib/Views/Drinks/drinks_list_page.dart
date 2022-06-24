import 'package:dummydrinks/Viewmodel/Drinks/drinks_view_model.dart';
import 'package:dummydrinks/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinksListPage extends StatelessWidget {
//========================================= build ==============================
  @override
  Widget build(BuildContext context) {
    DrinksViewModel drinksViewModel = context.watch<DrinksViewModel>();
    // drinksViewModel.getDrinks(search: "");
    return Scaffold(
      appBar: AppBar(
        title: Text("Drinks"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(1)),
                hintText: 'Please search...'),
            onChanged: (value) async {
              drinksViewModel.getDrinks(search: value);
              print(value);
            },
          ),
          drinkListWidget(drinksViewModel: drinksViewModel, context: context)
        ],
      ),
    );
  }

//==================================== build helpers ===========================
  drinkListWidget({required DrinksViewModel drinksViewModel, context}) {
    if (drinksViewModel.loading) {
      return Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      );
    }
    if (drinksViewModel.drinkerror.code != 000) {
      return Center(
        child: Container(
            margin: EdgeInsets.all(50),
            child: Text(
              "${drinksViewModel.drinkerror.errormessage}",
              style: TextStyle(fontSize: 18),
            )),
      );
    }
    return Expanded(
        child: ListView.separated(
      itemCount: drinksViewModel.drinkLists.drinks!.length,
      itemBuilder: (context, index) {
        var drinksitem = drinksViewModel.drinkLists.drinks![index];
        return InkWell(
          onTap: () async {
            drinksViewModel.setSingleDrink(drinksitem);
            NavigateDetailspage(context);
          },
          child: Card(
            shadowColor: Colors.black,
            child: ListTile(
              title: Text("${drinksitem.strDrink}"),
              subtitle: Text("${drinksitem.strCategory}"),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(padding: EdgeInsets.symmetric(vertical: 5));
      },
    ));
  }
}
