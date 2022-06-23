const String BASE_URL =
    "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=";
// ignore: constant_identifier_names
const SUCCESS = 200;
const USER_INVALID_RESPONSE = 100;
const NO_INTERNET = 101;
const INVALID_FORMAT = 102;
const UNKNOWN_ERROR = 103;

getErrorMessage({code}) {
  switch (code) {
    case USER_INVALID_RESPONSE:
    case INVALID_FORMAT:
    case UNKNOWN_ERROR:
      return "sorry something went wrong";
      break;
    case NO_INTERNET:
      return "No internet Available";
      break;
  }
}
