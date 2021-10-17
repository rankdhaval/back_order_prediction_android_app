import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:back_order_prediction/constants/strinf_constants.dart';
import 'package:back_order_prediction/models/APIErrorModel.dart';
import 'package:back_order_prediction/models/back_order_prediction_model.dart';
import 'package:http/http.dart' as http;

class PredictionRepository{

  Future predictBacOrder(BackOrderPredictionModel data) async {
    Map responseMap = Map();
    print(Uri.parse(StringConstants.PREDICT));
    try {
      print(jsonEncode(data));
      var response = await http.post(Uri.parse(StringConstants.PREDICT),
          headers: {
            "Content-Type": 'application/json'
          },
          body: jsonEncode(data))
          .timeout(Duration(seconds: 20));
      print(response.body);
      if (response.statusCode.isBetween(200, 299)) {
        responseMap = jsonDecode(response.body);
      } else {
        if (response.statusCode == 401)
          responseMap = {
            'error': APIErrorModel(
              errorMessage: StringConstants.SESSION_EXPIRED,
              errorType: ErrorType.UNAUTHORISED,
              statusCode: response.statusCode,
            )
          };
        else {
          responseMap = {
            'error': APIErrorModel(
              errorMessage: jsonDecode(response.body)['message'],
              errorType: ErrorType.WRONG_INPUT,
              statusCode: response.statusCode,
            )
          };
        }
      }
    } on SocketException {
      responseMap = {
        'error': APIErrorModel(
          errorMessage: StringConstants.NO_INTERNET,
          errorType: ErrorType.SOCKET,
          statusCode: -1,
        )
      };
    } on TimeoutException {
      responseMap = {
        'error': APIErrorModel(
          errorMessage: StringConstants.TIMEOUT_OCCURRED,
          errorType: ErrorType.TIMEOUT,
          statusCode: -1,
        )
      };
    } catch (e) {
      responseMap = {
        'error': APIErrorModel(
          errorMessage: StringConstants.SOMETHING_WENT_WRONG,
          errorType: ErrorType.EXCEPTION,
          statusCode: -1,
        )
      };
    }
    return responseMap;
  }
}