// ignore_for_file: camel_case_types

import 'package:app_movil/charts/individual_bar.dart';

/*class bar_data {
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  bar_data({
    required this.sunAmount,
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
  });

  List<bar_chart> barData = [];

  //iniciar datos de la barra
  void initializeBar_data(){
    barData = [
      bar_chart(x: 0, y: sunAmount),
      bar_chart(x: 1, y: monAmount),
      bar_chart(x: 2, y: tueAmount),
      bar_chart(x: 3, y: wedAmount),
      bar_chart(x: 4, y: thurAmount),
      bar_chart(x: 5, y: friAmount),
      bar_chart(x: 6, y: satAmount),
    ];
  }
}*/

class bar_data {
  final double line1Amount;
  final double line2Amount;

  bar_data({
    required this.line1Amount,
    required this.line2Amount,
  });

  List<bar_chart> barData = [];

  //iniciar datos de la barra
  void initializeBar_data(){
    barData = [
      bar_chart(x: 0, y: line1Amount),
      bar_chart(x: 1, y: line2Amount),
    ];
  }
}
