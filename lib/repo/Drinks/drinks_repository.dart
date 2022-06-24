import 'dart:convert';

import 'package:dummydrinks/Models/Drinks/drinks_List_model.dart';
import 'package:dummydrinks/Serivices/dio_client.dart';
import 'package:dummydrinks/repo/apistatus.dart';
import 'package:dummydrinks/utils/constant.dart';

class DrinksRqpository {
  static Future<Object> getDrinkslist({String searchtext = ""}) async {
    try {
      var response = await ApiHandller.fetchGet(url: BASE_URL + searchtext);

      if (response.statusCode == SUCCESS) {
        return Success(
            code: response.statusCode, data: drinkListFromJson(response.data));
      } else {
        return Failure(code: response.statusCode);
      }
    } catch (e) {
      return Failure(code: 101);
    }
  }
}
