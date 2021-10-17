class StringConstants{
  static const String HOST_NAME = 'https://back-order-prediction-app.herokuapp.com';
  static const String PREDICT = '$HOST_NAME/predict';


  static const String SOMETHING_WENT_WRONG = "Something went wrong, please try again";
  static const String SERVER_COULD_NOT_REACHED = "Server couldn't reached, please check your internet connection";
  static const String REQUEST_TIMED_OUT = "Request timed out";
  static const String NO_INTERNET = "Server couldn't reached, please check your internet connection";
  static const String TIMEOUT_OCCURRED = "Request timed out";
  static const String SUCCESSFULLY_UPDATED_THE_DATA = "Data updated successfully";
  static const String OTP_RESENT_SUCCESSFULLY = "OTP resend successfully";
  static const String OTP_VALIDATED_SUCCESSFULLY = "OTP validated successfully";
  static const String ERROR_WHILE_FETCHING_DATA = "Error while fetching data";
  static const String SUCCESS = "Success";
  static const String LOCATION_ALREADY_SELECTED = "Location already selected";
  static const String SESSION_EXPIRED = "Session has expired, please login again";
}

extension IntExtension on int{
  bool isBetween(int lowerValue, int upperValue) {
    return (this >= lowerValue && this <= upperValue);
  }
}

enum ErrorType{
  TIMEOUT,
  SOCKET,
  UNAUTHORISED,
  WRONG_INPUT,
  SERVER_ERROR,
  EXCEPTION,
}