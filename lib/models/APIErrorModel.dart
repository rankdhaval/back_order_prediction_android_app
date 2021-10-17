import 'package:back_order_prediction/constants/strinf_constants.dart';

class APIErrorModel{
  String errorMessage;
  ErrorType errorType;
  int statusCode;

  APIErrorModel({this.errorMessage, this.errorType, this.statusCode});
}