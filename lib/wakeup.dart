import 'package:flutter/material.dart';

int count=0;
class Wakeup extends StatefulWidget{
  @override
   State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Wakeup();
  }
}

class _Wakeup extends State<Wakeup>{

  bool activatequestions=false;

  @override
  Widget build(BuildContext context){

    return(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(resizeToAvoidBottomPadding: false,
       body: Center(child:Column(children: <Widget>[
        Align(
          alignment:Alignment.center,
          child:Container(
            height:150.0,
            //color: Colors.pink,
          child:ListView(
          children: <Widget>[
            Container(
              width: 150.0,
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("<5:00",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                     if(count==0){
                        _questions();
                        if(activatequestions){
                          setState(() {
                            Align(
                              alignment:Alignment.bottomCenter,
                              child:Container(
                            //color: Colors.cyan,
                            child: Column(
                               children: <Widget>[
                                 Text(
                                    'question1 is :',
                                     style: new TextStyle(
                                       color: Colors.black,
                                     //fontWeight: FontWeight.bold,
                                     fontSize: 30.0,
                      ),
                    ),
                   
                               ]
                            ),
                          )); 
                          });
                          debugPrint("in");
                        }
                       // count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("5:15",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("5:30",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                       // count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("5:45",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("6:00",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("6:15",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("6:30",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                       //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("6:45",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("7:00",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                
            Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("7:15",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("7:30",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("7:45",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("8:00",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("8:15",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("8:30",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text("8:45",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  Container(color:Colors.black,
                  width:100.0,
                  height:60.0,
                  child:GestureDetector(child:Card(child:Container(alignment: Alignment.center,
                    child:Text(">9:00",style: TextStyle(fontSize: 30.0),textAlign: TextAlign.center,)
                  )),onTap: (){
                    if(count==0){
                        _questions();
                        //count++;
                     }
                     //else{}....save to db
                  },)),
                  ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child:Container(
                //color: Colors.purple,
              width:100.0,
                child:RaisedButton(
                    onPressed: () {},
                    child: Text("None",style: TextStyle( fontSize: 25.0),),
              color: Colors.blue,
              elevation: 6.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))
                  ),)
            )
          ],
        ),
       )),
       ]
       )
       )
      )
       )
       );
      }
   void _questions(){
 activatequestions=true;
}
}

