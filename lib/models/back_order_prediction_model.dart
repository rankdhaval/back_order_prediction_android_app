class BackOrderPredictionModel {
  double nationalInv;
  double leadTime;
  double inTransitQty;
  double forecast3Month;
  double forecast6Month;
  double forecast9Month;
  double sales1Month;
  double sales3Month;
  double sales6Month;
  double sales9Month;
  double minBank;
  bool potentialIssue;
  double piecesPastDue;
  double perf6MonthAvg;
  double perf12MonthAvg;
  double localBoQty;
  bool deckRisk;
  bool oeConstraint;
  bool ppapRisk;
  bool stopAutoBuy;
  bool revStop;

  BackOrderPredictionModel(
      {this.nationalInv = 0.0,
        this.leadTime = 0.0,
        this.inTransitQty = 0.0,
        this.forecast3Month = 0.0,
        this.forecast6Month = 0.0,
        this.forecast9Month = 0.0,
        this.sales1Month = 0.0,
        this.sales3Month = 0.0,
        this.sales6Month = 0.0,
        this.sales9Month = 0.0,
        this.minBank = 0.0,
        this.potentialIssue = false,
        this.piecesPastDue = 0.0,
        this.perf6MonthAvg = 0.0,
        this.perf12MonthAvg = 0.0,
        this.localBoQty = 0.0,
        this.deckRisk = false,
        this.oeConstraint = false,
        this.ppapRisk = false,
        this.stopAutoBuy = false,
        this.revStop = false});

  BackOrderPredictionModel.fromJson(Map<String, dynamic> json) {
    nationalInv = json['national_inv'];
    leadTime = json['lead_time'];
    inTransitQty = json['in_transit_qty'];
    forecast3Month = json['forecast_3_month'];
    forecast6Month = json['forecast_6_month'];
    forecast9Month = json['forecast_9_month'];
    sales1Month = json['sales_1_month'];
    sales3Month = json['sales_3_month'];
    sales6Month = json['sales_6_month'];
    sales9Month = json['sales_9_month'];
    minBank = json['min_bank'];
    potentialIssue = json['potential_issue'];
    piecesPastDue = json['pieces_past_due'];
    perf6MonthAvg = json['perf_6_month_avg'];
    perf12MonthAvg = json['perf_12_month_avg'];
    localBoQty = json['local_bo_qty'];
    deckRisk = json['deck_risk'];
    oeConstraint = json['oe_constraint'];
    ppapRisk = json['ppap_risk'];
    stopAutoBuy = json['stop_auto_buy'];
    revStop = json['rev_stop'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['national_inv'] = this.nationalInv;
    data['lead_time'] = this.leadTime;
    data['in_transit_qty'] = this.inTransitQty;
    data['forecast_3_month'] = this.forecast3Month;
    data['forecast_6_month'] = this.forecast6Month;
    data['forecast_9_month'] = this.forecast9Month;
    data['sales_1_month'] = this.sales1Month;
    data['sales_3_month'] = this.sales3Month;
    data['sales_6_month'] = this.sales6Month;
    data['sales_9_month'] = this.sales9Month;
    data['min_bank'] = this.minBank;
    data['potential_issue'] = this.potentialIssue;
    data['pieces_past_due'] = this.piecesPastDue;
    data['perf_6_month_avg'] = this.perf6MonthAvg;
    data['perf_12_month_avg'] = this.perf12MonthAvg;
    data['local_bo_qty'] = this.localBoQty;
    data['deck_risk'] = this.deckRisk;
    data['oe_constraint'] = this.oeConstraint;
    data['ppap_risk'] = this.ppapRisk;
    data['stop_auto_buy'] = this.stopAutoBuy;
    data['rev_stop'] = this.revStop;
    return data;
  }
}
