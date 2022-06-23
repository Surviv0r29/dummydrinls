// ignore_for_file: file_names

// To parse this JSON data, do
//
//     final drinkList = drinkListFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DrinkList drinkListFromJson(String str) => DrinkList.fromJson(json.decode(str));

// String drinkListToJson(DrinkList data) => json.encode(data.toJson());

class DrinkList {
  DrinkList({
    required this.drinks,
  });

  final List<Drink>? drinks;

  factory DrinkList.fromJson(Map<String, dynamic> json) => DrinkList(
        drinks: json["drinks"] == null
            ? null
            : List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
      );

  // Map<String, dynamic> toJson() => {
  //       "drinks": drinks == null
  //           ? null
  //           : List<dynamic>.from(drinks.map((x) => x.toJson())),
  //     };
}

class Drink {
  Drink({
    required this.idDrink,
    required this.strDrink,
    required this.strDrinkAlternate,
    required this.strTags,
    required this.strVideo,
    required this.strCategory,
    required this.strIba,
    required this.strAlcoholic,
    required this.strGlass,
    required this.strInstructions,
    required this.strInstructionsEs,
    required this.strInstructionsDe,
    required this.strInstructionsFr,
    required this.strInstructionsIt,
    required this.strInstructionsZhHans,
    required this.strInstructionsZhHant,
    required this.strDrinkThumb,
    required this.strIngredient1,
    required this.strIngredient2,
    required this.strIngredient3,
    required this.strIngredient4,
    required this.strIngredient5,
    required this.strIngredient6,
    required this.strIngredient7,
    required this.strIngredient8,
    required this.strIngredient9,
    required this.strIngredient10,
    required this.strIngredient11,
    required this.strIngredient12,
    required this.strIngredient13,
    required this.strIngredient14,
    required this.strIngredient15,
    required this.strMeasure1,
    required this.strMeasure2,
    required this.strMeasure3,
    required this.strMeasure4,
    required this.strMeasure5,
    required this.strMeasure6,
    required this.strMeasure7,
    required this.strMeasure8,
    required this.strMeasure9,
    required this.strMeasure10,
    required this.strMeasure11,
    required this.strMeasure12,
    required this.strMeasure13,
    required this.strMeasure14,
    required this.strMeasure15,
    required this.strImageSource,
    required this.strImageAttribution,
    required this.strCreativeCommonsConfirmed,
    required this.dateModified,
  });

  final String idDrink;
  final String strDrink;
  final dynamic strDrinkAlternate;
  final String strTags;
  final String strVideo;
  final String strCategory;
  final String strIba;
  final String strAlcoholic;
  final String strGlass;
  final String strInstructions;
  final String strInstructionsEs;
  final String strInstructionsDe;
  final dynamic strInstructionsFr;
  final String strInstructionsIt;
  final dynamic strInstructionsZhHans;
  final dynamic strInstructionsZhHant;
  final String strDrinkThumb;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strIngredient6;
  final dynamic strIngredient7;
  final dynamic strIngredient8;
  final dynamic strIngredient9;
  final dynamic strIngredient10;
  final dynamic strIngredient11;
  final dynamic strIngredient12;
  final dynamic strIngredient13;
  final dynamic strIngredient14;
  final dynamic strIngredient15;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  final dynamic strMeasure6;
  final dynamic strMeasure7;
  final dynamic strMeasure8;
  final dynamic strMeasure9;
  final dynamic strMeasure10;
  final dynamic strMeasure11;
  final dynamic strMeasure12;
  final dynamic strMeasure13;
  final dynamic strMeasure14;
  final dynamic strMeasure15;
  final String strImageSource;
  final String strImageAttribution;
  final String strCreativeCommonsConfirmed;
  final String dateModified;

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        idDrink: json["idDrink"] == null ? null : json["idDrink"],
        strDrink: json["strDrink"] == null ? null : json["strDrink"],
        strDrinkAlternate: json["strDrinkAlternate"],
        strTags: json["strTags"] == null ? "" : json["strTags"],
        strVideo: json["strVideo"] == null ? "" : json["strVideo"],
        strCategory: json["strCategory"] == null ? "" : json["strCategory"],
        strIba: json["strIBA"] == null ? "" : json["strIBA"],
        strAlcoholic: json["strAlcoholic"] == null ? "" : json["strAlcoholic"],
        strGlass: json["strGlass"] == null ? "" : json["strGlass"],
        strInstructions:
            json["strInstructions"] == null ? "" : json["strInstructions"],
        strInstructionsEs:
            json["strInstructionsES"] == null ? "" : json["strInstructionsES"],
        strInstructionsDe:
            json["strInstructionsDE"] == null ? "" : json["strInstructionsDE"],
        strInstructionsFr: json["strInstructionsFR"],
        strInstructionsIt:
            json["strInstructionsIT"] == null ? "" : json["strInstructionsIT"],
        strInstructionsZhHans: json["strInstructionsZH-HANS"],
        strInstructionsZhHant: json["strInstructionsZH-HANT"],
        strDrinkThumb:
            json["strDrinkThumb"] == null ? "" : json["strDrinkThumb"],
        strIngredient1:
            json["strIngredient1"] == null ? "" : json["strIngredient1"],
        strIngredient2:
            json["strIngredient2"] == null ? "" : json["strIngredient2"],
        strIngredient3:
            json["strIngredient3"] == null ? "" : json["strIngredient3"],
        strIngredient4:
            json["strIngredient4"] == null ? "" : json["strIngredient4"],
        strIngredient5:
            json["strIngredient5"] == null ? "" : json["strIngredient5"],
        strIngredient6:
            json["strIngredient6"] == null ? "" : json["strIngredient6"],
        strIngredient7: json["strIngredient7"],
        strIngredient8: json["strIngredient8"],
        strIngredient9: json["strIngredient9"],
        strIngredient10: json["strIngredient10"],
        strIngredient11: json["strIngredient11"],
        strIngredient12: json["strIngredient12"],
        strIngredient13: json["strIngredient13"],
        strIngredient14: json["strIngredient14"],
        strIngredient15: json["strIngredient15"],
        strMeasure1: json["strMeasure1"] == null ? "" : json["strMeasure1"],
        strMeasure2: json["strMeasure2"] == null ? "" : json["strMeasure2"],
        strMeasure3: json["strMeasure3"] == null ? "" : json["strMeasure3"],
        strMeasure4: json["strMeasure4"] == null ? "" : json["strMeasure4"],
        strMeasure5: json["strMeasure5"] == null ? "" : json["strMeasure5"],
        strMeasure6: json["strMeasure6"],
        strMeasure7: json["strMeasure7"],
        strMeasure8: json["strMeasure8"],
        strMeasure9: json["strMeasure9"],
        strMeasure10: json["strMeasure10"],
        strMeasure11: json["strMeasure11"],
        strMeasure12: json["strMeasure12"],
        strMeasure13: json["strMeasure13"],
        strMeasure14: json["strMeasure14"],
        strMeasure15: json["strMeasure15"],
        strImageSource:
            json["strImageSource"] == null ? "" : json["strImageSource"],
        strImageAttribution: json["strImageAttribution"] == null
            ? ""
            : json["strImageAttribution"],
        strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"] == null
            ? ""
            : json["strCreativeCommonsConfirmed"],
        dateModified: json["dateModified"] == null ? "" : json["dateModified"],
      );

  Map<String, dynamic> toJson() => {
        "idDrink": idDrink == null ? null : idDrink,
        "strDrink": strDrink == null ? null : strDrink,
        "strDrinkAlternate": strDrinkAlternate,
        "strTags": strTags == null ? null : strTags,
        "strVideo": strVideo == null ? null : strVideo,
        "strCategory": strCategory == null ? null : strCategory,
        "strIBA": strIba == null ? null : strIba,
        "strAlcoholic": strAlcoholic == null ? null : strAlcoholic,
        "strGlass": strGlass == null ? null : strGlass,
        "strInstructions": strInstructions == null ? null : strInstructions,
        "strInstructionsES":
            strInstructionsEs == null ? null : strInstructionsEs,
        "strInstructionsDE":
            strInstructionsDe == null ? null : strInstructionsDe,
        "strInstructionsFR": strInstructionsFr,
        "strInstructionsIT":
            strInstructionsIt == null ? null : strInstructionsIt,
        "strInstructionsZH-HANS": strInstructionsZhHans,
        "strInstructionsZH-HANT": strInstructionsZhHant,
        "strDrinkThumb": strDrinkThumb == null ? null : strDrinkThumb,
        "strIngredient1": strIngredient1 == null ? null : strIngredient1,
        "strIngredient2": strIngredient2 == null ? null : strIngredient2,
        "strIngredient3": strIngredient3 == null ? null : strIngredient3,
        "strIngredient4": strIngredient4 == null ? null : strIngredient4,
        "strIngredient5": strIngredient5 == null ? null : strIngredient5,
        "strIngredient6": strIngredient6 == null ? null : strIngredient6,
        "strIngredient7": strIngredient7,
        "strIngredient8": strIngredient8,
        "strIngredient9": strIngredient9,
        "strIngredient10": strIngredient10,
        "strIngredient11": strIngredient11,
        "strIngredient12": strIngredient12,
        "strIngredient13": strIngredient13,
        "strIngredient14": strIngredient14,
        "strIngredient15": strIngredient15,
        "strMeasure1": strMeasure1 == null ? null : strMeasure1,
        "strMeasure2": strMeasure2 == null ? null : strMeasure2,
        "strMeasure3": strMeasure3 == null ? null : strMeasure3,
        "strMeasure4": strMeasure4 == null ? null : strMeasure4,
        "strMeasure5": strMeasure5 == null ? null : strMeasure5,
        "strMeasure6": strMeasure6,
        "strMeasure7": strMeasure7,
        "strMeasure8": strMeasure8,
        "strMeasure9": strMeasure9,
        "strMeasure10": strMeasure10,
        "strMeasure11": strMeasure11,
        "strMeasure12": strMeasure12,
        "strMeasure13": strMeasure13,
        "strMeasure14": strMeasure14,
        "strMeasure15": strMeasure15,
        "strImageSource": strImageSource == null ? null : strImageSource,
        "strImageAttribution":
            strImageAttribution == null ? null : strImageAttribution,
        "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed == null
            ? null
            : strCreativeCommonsConfirmed,
        "dateModified": dateModified == null ? null : dateModified,
      };
}

class DrinksError {
  String errormessage;
  int code;
  DrinksError({required this.code, required this.errormessage});
}
