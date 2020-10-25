import 'package:flutter/material.dart';

class Rich extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new MakeItRainState();

    throw UnimplementedError();
  }

}


class MakeItRainState extends State<Rich>{
  int _moneyCounter=0;

  void _rainMoney(){
    //setState is called each time we need to update the ui
     setState(() {
       _moneyCounter=_moneyCounter + 100;
     });

  }

  @override
  Widget build(BuildContext context) {

     return new Scaffold(
       appBar: new AppBar(
         title: new Text("Be Rich!"),
         backgroundColor: Colors.lightGreen,
         
         

       ),
       
       body: new Container(
         child: new Column(
           children: <Widget>[
             new Center(

               child: new Text("Get Rich!",textDirection: TextDirection.ltr,
               style: new TextStyle(color: _moneyCounter>2000?Colors.blueAccent : Colors.red,fontWeight: FontWeight.w400,fontSize: 29.9),
             ),
             ),

          new Expanded(child: new Center(
            child: new Text('\$$_moneyCounter',style: new TextStyle(color:Colors.greenAccent,fontSize: 46.9,fontWeight: FontWeight.w100),),
          )) ,


          new Expanded(child: new Center(

            child: new FlatButton(
                color: Colors.lightGreen,
                textColor: Colors.white,
                onPressed: _rainMoney,
                child:new Text("Start",
            style: new TextStyle(fontSize: 19.9),
            )),
          ))

           ],
           
         ),
         
       ),
     );


    throw UnimplementedError();
  }



}