import 'package:flutter/material.dart';

class CheckTextField extends StatefulWidget{
  static final String routeName='home ';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
return CheckTextFieldWidget();
  }
}
 class CheckTextFieldWidget extends State<CheckTextField>{
  @override
  Widget build(BuildContext context) {

return Scaffold(
appBar: AppBar(title: Text('hellow world'),),
  body: Column(
    children: [
      Text('heeeyyyy')
    ],
  ),
);
  }
 }