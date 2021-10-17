import 'package:back_order_prediction/screens/prediction_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: PredictionScreen(),
    );
  }
}
