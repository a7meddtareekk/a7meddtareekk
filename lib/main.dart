import 'package:ecall/CheckTextField.dart';
import 'package:ecall/MedicalHistory.dart';
import 'package:flutter/material.dart';

void main(){
runApp(Application());
}
class Application extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my application ',
      routes: {
        MedicalHistory.routeName: (context) => MedicalHistory(),
        CheckTextField.routeName: (context) => CheckTextField(),
      },
      initialRoute: MedicalHistory.routeName,
      home: Scaffold(
          backgroundColor: Color(0xffd5d8d8),
          body: Center(child: MedicalHistory()),

      )
      ,
    );
  }
}