import 'package:dummydrinks/Models/Drinks/drinks_List_model.dart';
import 'package:dummydrinks/repo/Drinks/drinks_repository.dart';
import 'package:dummydrinks/repo/apistatus.dart';
import 'package:dummydrinks/utils/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class DrinksViewModel extends ChangeNotifier {
  bool _loading = false;
  late DrinkList _drinklist;
  late Drink _drinkModel;
  DrinksError _drinksError = DrinksError(code: 000, errormessage: "");
  DrinksViewModel() {
    getDrinks(search: "");
  }
  //getter
  DrinksError get drinkerror => _drinksError;
  bool get loading => _loading;
  DrinkList get drinkLists => _drinklist;
  Drink get drinkModel => _drinkModel;
  //setters
  setDrinksList(DrinkList drinklist) {
    _drinklist = drinklist;
    print("The drinklist is ${_drinklist.drinks!.length}");
  }

  setDrinkerror(DrinksError drinksError) {
    _drinksError = drinksError;
  }

  setSingleDrink(Drink drinkModel) {
    _drinkModel = drinkModel;
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  //functions
  getDrinks({search = ""}) async {
    setLoading(true);
    var response = await DrinksRqpository.getDrinkslist(searchtext: search);
    if (response is Success) {
      print("the response is ${response.data}");
      setDrinksList(response.data);
    }

    if (response is Failure) {
      DrinksError drinksError = DrinksError(
          code: response.code,
          errormessage: getErrorMessage(code: response.code));
      setDrinkerror(drinksError);
    }
    setLoading(false);
  }
}
