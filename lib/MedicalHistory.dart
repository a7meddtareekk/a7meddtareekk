
import 'package:ecall/CheckTextField.dart';
import 'package:flutter/material.dart';
class MedicalHistory extends StatefulWidget{
  static final String routeName='Medical History ';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return MedicalHistoryWidget();

  }
}
class MedicalHistoryWidget extends State<MedicalHistory> {
  final textController_1 = TextEditingController();
  final textController_2 = TextEditingController();
  TextEditingController controller;
  bool isNameValid = true;
  RegExp regExp = new RegExp(r'^[a-zA-Z]+$',);

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 244, 244),
        title: Text('Medical History ',style: TextStyle(color:Colors.black ),),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
                child: Container(
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.only(top: 20),

                  child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('What is your Blood Type ?',style:TextStyle(fontSize: 12,color: Color.fromARGB(
                        255, 20, 58, 65)))),
                  TextField(

                      controller: textController_1,
                      autocorrect: true,
                      style: TextStyle(fontSize: 10),
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                        labelText: 'Enter Your Blood Type ',
                  ))
              ],
            ),
                )),
            Expanded(
                flex: 3,
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('Do you have any diseases ?',style:TextStyle(fontSize: 12,color: Color.fromARGB(
                        255, 20, 58, 65)),)),
                  TextField(
                    minLines: 17,
                    maxLines: 17,
                      controller: textController_2,
                      autocorrect: true,
                    style: TextStyle(fontSize: 10),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Your Comment ',
                    )),
              ],
            )),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      checkTextFieldEmptyOrNot;
                      Navigator.pushNamed(context, CheckTextField.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 244, 244, 244)),
                    child: (Text(
                      'Submit ',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


   checkTextFieldEmptyOrNot(){

    // Creating 3 String Variables.
    String text1,text2 ;

    // Getting Value From Text Field and Store into String Variable
    text1 = textController_1.text ;
    text2 = textController_2.text ;


    // Checking all TextFields.
    if(text1 .isEmpty|| text2 .isEmpty )
    {
      // Put your code here which you want to execute when Text Field is Empty.
      print('Text Field is empty, Please Fill All Data');

    }else{

      // Put your code here, which you want to execute when Text Field is NOT Empty.
      print('Not Empty, All Text Input is Filled.');
    }

  }



}
