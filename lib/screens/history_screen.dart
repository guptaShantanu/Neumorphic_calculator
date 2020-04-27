import 'package:calculator/utilities/history_data.dart';
import 'package:flutter/material.dart';
import 'package:calculator/utilities/constants.dart';

class HistoryScreen extends StatelessWidget {
  List<Widget> resultList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  History',style: TextStyle(fontFamily: 'Montserrat',
            color: Color.fromRGBO(38, 38, 38, 1),
            fontWeight: FontWeight.w900),),
        elevation: 0,
        backgroundColor: Color.fromRGBO(239, 238, 238, 1),
      ),
      backgroundColor: Color.fromRGBO(239, 238, 238, 1),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: results.length,
            reverse: true,
            itemBuilder: (context,i){
              return GestureDetector(
                onLongPress: (){
                  Navigator.pop(context,[results[i][0],results[i][1]]);
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text(results[i][0],style: KCalculationSmallTextStyle,),
                      SizedBox(height: 5.0,),
                      Text(results[i][1],style: KCalculationTextStyle,),
                      Container(height: 2.0,width: double.infinity,color: Colors.black,margin: EdgeInsets.all(5.0),),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
