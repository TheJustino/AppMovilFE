import 'package:app_movil/charts/bar_graph.dart';
import 'package:app_movil/charts/line_graph.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class pageCharts extends StatelessWidget {
  const pageCharts({Key? key}) : super(key: key);
  static List<double> weeklySummary = [
    40.40,
    20.50,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 65, 65, 65),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: SizedBox(
          height: 150,
          child: Image.asset('assets/Logodslines.png'),
        ),
      ),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                'Graficas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255), width: 2)),
                height: 230,
                width: 450,
                child: MyBarGraph(weeklySummary: weeklySummary),
              ),


              const SizedBox(
                height: 50,
                width: 50,
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255), width: 2)),
                height: 230,
                width: 450,
                child: const MyLineGraph(),
              )
            ],
          ),
        ),

          /*child: Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255), width: 2)),
            height: 230,
            width: 450,
            child: MyBarGraph(weeklySummary: weeklySummary),
          ),*/
      ),
    );
  }
}

class lineChart extends StatelessWidget {
  const lineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Color.fromARGB(255, 255, 255, 255), width: 2)),
        height: 230,
        width: 450,
       child: const MyLineGraph(),
      ),
    ));
  }
}
