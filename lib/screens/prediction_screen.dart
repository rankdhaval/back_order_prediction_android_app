import 'package:back_order_prediction/models/back_order_prediction_model.dart';
import 'package:back_order_prediction/repositories/predict_repository.dart';
import 'package:back_order_prediction/widgets/TextFieldOutlinedWidget.dart';
import 'package:flutter/material.dart';

class PredictionScreen extends StatefulWidget {
  const PredictionScreen({Key key}) : super(key: key);

  @override
  _PredictionScreenState createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {

  BackOrderPredictionModel _backOrderPredictionModel = BackOrderPredictionModel();

  final national_invController = TextEditingController();
  final lead_timeController = TextEditingController();
  final in_transit_qtyController = TextEditingController();
  final forecast_3_monthController = TextEditingController();
  final forecast_6_monthController = TextEditingController();
  final forecast_9_monthController = TextEditingController();
  final sales_1_monthController = TextEditingController();
  final sales_3_monthController = TextEditingController();
  final sales_6_monthController = TextEditingController();
  final sales_9_monthController = TextEditingController();
  final min_bankController = TextEditingController();
  final pieces_past_dueController = TextEditingController();
  final perf_6_month_avgController = TextEditingController();
  final perf_12_month_avgController = TextEditingController();
  final local_bo_qtyController = TextEditingController();

  final national_invFocusNode = FocusNode();
  final lead_timeFocusNode = FocusNode();
  final in_transit_qtyFocusNode = FocusNode();
  final forecast_3_monthFocusNode = FocusNode();
  final forecast_6_monthFocusNode = FocusNode();
  final forecast_9_monthFocusNode = FocusNode();
  final sales_1_monthFocusNode = FocusNode();
  final sales_3_monthFocusNode = FocusNode();
  final sales_6_monthFocusNode = FocusNode();
  final sales_9_monthFocusNode = FocusNode();
  final min_bankFocusNode = FocusNode();
  final pieces_past_dueFocusNode = FocusNode();
  final perf_6_month_avgFocusNode = FocusNode();
  final perf_12_month_avgFocusNode = FocusNode();
  final local_bo_qtyFocusNode = FocusNode();

  final national_invKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final lead_timeKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final in_transit_qtyKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final forecast_3_monthKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final forecast_6_monthKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final forecast_9_monthKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final sales_1_monthKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final sales_3_monthKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final sales_6_monthKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final sales_9_monthKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final min_bankKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final pieces_past_dueKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final perf_6_month_avgKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final perf_12_month_avgKey = GlobalKey<TextFieldOutlinedWidgetState>();
  final local_bo_qtyKey = GlobalKey<TextFieldOutlinedWidgetState>();


  final _formKey = GlobalKey<FormState>();

  bool enabeled = true;
  double space = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back Order Prediction'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFieldOutlinedWidget(
                context: context,
                labelText: 'National inv.',
                controller: national_invController,
                focusNode: national_invFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.nationalInv = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),

              TextFieldOutlinedWidget(
                context: context,
                labelText: 'Lead time',
                controller: lead_timeController,
                focusNode: lead_timeFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.leadTime = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),

              TextFieldOutlinedWidget(
                context: context,
                labelText: 'In transit quantity',
                controller: in_transit_qtyController,
                focusNode: in_transit_qtyFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.inTransitQty = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),

              TextFieldOutlinedWidget(
                context: context,
                labelText: 'Forecast 3 Months',
                controller: forecast_3_monthController,
                focusNode: forecast_3_monthFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.forecast3Month = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),

              TextFieldOutlinedWidget(
                context: context,
                labelText: 'Forecast 6 month',
                controller: forecast_6_monthController,
                focusNode: forecast_6_monthFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.forecast6Month = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),
              TextFieldOutlinedWidget(
                context: context,
                labelText: 'Forecast 9 month',
                controller: forecast_9_monthController,
                focusNode: forecast_9_monthFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.forecast9Month = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),
              TextFieldOutlinedWidget(
                context: context,
                labelText: 'Sales 1 month',
                controller: sales_1_monthController,
                focusNode: sales_1_monthFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.sales1Month = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),TextFieldOutlinedWidget(
                context: context,
                labelText: 'Sales 3 month',
                controller: sales_3_monthController,
                focusNode: sales_3_monthFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.sales3Month = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),TextFieldOutlinedWidget(
                context: context,
                labelText: 'Sales 6 month',
                controller: sales_6_monthController,
                focusNode: sales_6_monthFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.sales6Month = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),TextFieldOutlinedWidget(
                context: context,
                labelText: 'Sales 9 month',
                controller: sales_9_monthController,
                focusNode: sales_9_monthFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.sales9Month = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),TextFieldOutlinedWidget(
                context: context,
                labelText: 'Min Bank',
                controller: min_bankController,
                focusNode: min_bankFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.minBank = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),TextFieldOutlinedWidget(
                context: context,
                labelText: 'pieces past due',
                controller: pieces_past_dueController,
                focusNode: pieces_past_dueFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.piecesPastDue = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),TextFieldOutlinedWidget(
                context: context,
                labelText: 'Performance 6 months',
                controller: perf_6_month_avgController,
                focusNode: perf_6_month_avgFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.perf6MonthAvg = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),TextFieldOutlinedWidget(
                context: context,
                labelText: 'Performance 12 Months',
                controller: perf_12_month_avgController,
                focusNode: perf_12_month_avgFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.perf12MonthAvg = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),

              TextFieldOutlinedWidget(
                context: context,
                labelText: 'Local bow Qty',
                controller: local_bo_qtyController,
                focusNode: local_bo_qtyFocusNode,
                input: TextInputType.number,
                onSaved: (String value){
                  _backOrderPredictionModel.localBoQty = double.tryParse(value.trim() == '' ? '0.0' : value.trim());
                },
                enabled: enabeled,
              ),

              SizedBox(height: space,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(value: _backOrderPredictionModel.potentialIssue,

                            onChanged: (val){
                         setState(() {
                           _backOrderPredictionModel.potentialIssue = val;
                         });
                        }),
                        SizedBox(width: space,),
                        Text('Potential issue')
                      ],
                    ),
                  ),

                  SizedBox(width: space,),

                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(value: _backOrderPredictionModel.deckRisk,

                            onChanged: (val){
                              setState(() {
                                _backOrderPredictionModel.deckRisk = val;
                              });
                            }),
                        SizedBox(width: space,),
                        Text('Desk Risk')
                      ],
                    ),
                  ),
                ],
              ),



              SizedBox(height: space,),

              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(value: _backOrderPredictionModel.oeConstraint,

                            onChanged: (val){
                              setState(() {
                                _backOrderPredictionModel.oeConstraint = val;
                              });
                            }),
                        SizedBox(width: space,),
                        Text('oe constraints')
                      ],
                    ),
                  ),

                  SizedBox(height: space,),

                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(value: _backOrderPredictionModel.ppapRisk,

                            onChanged: (val){
                              setState(() {
                                _backOrderPredictionModel.ppapRisk = val;
                              });
                            }),
                        SizedBox(width: space,),
                        Text('ppap risk')
                      ],
                    ),
                  ),

                ],
              ),



              SizedBox(height: space,),

              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(value: _backOrderPredictionModel.stopAutoBuy,

                            onChanged: (val){
                              setState(() {
                                _backOrderPredictionModel.stopAutoBuy = val;
                              });
                            }),
                        SizedBox(width: space,),
                        Text('Stop Auto Buy')
                      ],
                    ),
                  ),

                  SizedBox(height: space,),

                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(value: _backOrderPredictionModel.revStop,

                            onChanged: (val){
                              setState(() {
                                _backOrderPredictionModel.revStop = val;
                              });
                            }),
                        SizedBox(width: space,),
                        Text('Rev Stop')
                      ],
                    ),
                  ),
                ],
              ),



              SizedBox(height: space,),

              ElevatedButton(onPressed: apiCall ? null : predictButtonClick, child: Text('Predict'.toUpperCase()))

            ],
          ),
        ),
      ),
    );
  }

  PredictionRepository predictionRepository = PredictionRepository();
  bool apiCall = false;
  
  Future<void> predictButtonClick() async {
      _formKey.currentState.save();
      setState(() {
        apiCall =true;
        enabeled = false;
      });
      showDialog(context: context, builder: (context)=>Image.asset('assets/think.gif'), barrierDismissible: false);
      print(_backOrderPredictionModel.toJson());
      final resp = await predictionRepository.predictBacOrder(_backOrderPredictionModel);
      print(resp['went_on_backorder']);
      Navigator.pop(context);
      showDialogBox(resp['went_on_backorder']);
      setState(() {
        apiCall = false;
        enabeled = true;
      });
  }

  void showDialogBox(bool resp) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Goes to Back Order: $resp', style: TextStyle(color: Colors.green),),
            ),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
}