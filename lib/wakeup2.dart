import 'package:flutter/material.dart';

class WakeUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DispScreen();
  }
}

class DispScreen extends State<WakeUpScreen> {
  int _radio1 = -1, _radio2 = -1,current=-1;
  List radioBtns=[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
  String selectedSlotVal = '';
  List<Widget> allQuesWidgets=[];
  final List<Widget> ques = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body:

        //WORKING JST SINGLE LINE
        Column(children: getDispContent(),)
      ,
    )
    );
  }

 List<Widget> getDispContent() {
    List<Widget> content = [];
    print(radioBtns);
    makeQuesWidgets();
    quesList();
    print('invoked getDispContent');
    makeQuesWidgets();
    //WORKING
    content.add(
      Expanded(
      child:
       GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 2.2,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: getTimeButtons(),
      ),
    ),
    );

    content.add(
      DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/bg.jpg'),
        // ...
        ),
      // ...
      ),
    )
    );

    content.add(
      SingleChildScrollView(
        padding: const EdgeInsets.all(4.0),
        child:
         Column(
          children: ques,
        ),
      )
    );

    content.add(
      Align(
        alignment: Alignment.bottomRight,
        child:Container(
          child:RaisedButton(
            onPressed: () {
              setState(() {
                if(current<12)
                  current+=2;
                else
                  current=0;
                quesList();
              });
            },
              child: Text("Next",style: TextStyle( fontSize: 25.0),),
              color: Colors.blueAccent,
              elevation: 6.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))
          )
        )
        ),
    );

    return content;
  }

  List<Widget> getTimeButtons() {
    List<Widget> btns = [];
    Widget temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('< 5:00'),
      onPressed: () {
        setState(() {
         dispQues('<5'); 
        });
      } ,
    );
    btns.add(temp);
    for (var i = 5; i <= 8; i++) {
      for (var j = 0; j <= 45; j += 15) {
        String btnVal = '';
        if (j == 0)
          btnVal = '00';
        else
          btnVal = j.toString();
        Widget temp = new RaisedButton(
          color: Colors.limeAccent[700],
          child: Text(i.toString() + ':' + btnVal),
          onPressed: () { 
            setState(() {
            dispQues(i.toString() + '.' + j.toString());
            });
          },
        );
        btns.add(temp);
      }
    }
    temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('9:00'),
      onPressed: () { 
        setState(() {
          dispQues('9');  
        });
        },
    );
    btns.add(temp);
    temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('> 9.00'),
      onPressed: () { 
          setState(() {
            dispQues('>9');  
          });
          
        },
    );
    btns.add(temp);
    temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('None'),
      onPressed: (){ 
        setState(() {
          dispQues('none');  
        });
      } ,
    );
    btns.add(temp);
    return btns;
  }

  void quesList() {
    ques.clear();
    if(current==-1)
      return;
    Widget selectedSlot = Text('Selected timeslot: ' + selectedSlotVal);
      ques.add(selectedSlot);
    //setState(() {
      /*Widget selectedSlot = Text('Selected timeslot: ' + selectedSlotVal);
      ques.add(selectedSlot);
      Widget dispQues = new Container(
        child: Column(
          children: <Widget>[
            Text('ques1'),
            Row(children: <Widget>[
              Text('opt1'),
              Radio(
                value: 0,
                groupValue: radioBtns[0],
                onChanged: optSelectedQ1,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt2'),
              Radio(
                value: 1,
                groupValue: radioBtns[0],
                onChanged: optSelectedQ1,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt3'),
              Radio(
                value: 2,
                groupValue: radioBtns[0],
                onChanged: optSelectedQ1,
              ),
            ]),
          ],
        ),
      );*/
      ques.add(allQuesWidgets[current]);
      /*dispQues = new Container(
        child: Column(
          children: <Widget>[
            Text('ques2'),
            Row(children: <Widget>[
              Text('opt1'),
              Radio(
                value: 0,
                groupValue: radioBtns[1],
                onChanged: optSelectedQ2,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt2'),
              Radio(
                value: 1,
                groupValue: radioBtns[1],
                onChanged: optSelectedQ2,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt3'),
              Radio(
                value: 2,
                groupValue: radioBtns[1],
                onChanged: optSelectedQ2,
              ),
            ]),
          ],
        ),
      );*/
      ques.add(allQuesWidgets[current+1]);
    //});
  }

  void dispQues(slot) {
    print('triggered dispques');
    radioBtns=[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
    current=0;
    selectedSlotVal = slot;
    quesList();
  }

  void optSelectedQ1(val) {
    radioBtns[0] = val;
    quesList();
  }

  void optSelectedQ2(val) {
    radioBtns[1] = val;
    quesList();
  }


void makeQuesWidgets(){
  var btn=0;
  print('check queswidget');
  allQuesWidgets.clear();
  for(var i=0;i<7;i++){
    Widget dispQues = new Container(
        child: Column(
          children: <Widget>[
            Text('ques'+btn.toString()),
            Row(children: <Widget>[
              Text('opt1'),
              Radio(
                value: 0,
                groupValue: radioBtns[(2*i)],
                onChanged: (val){
                  setState(() {
                    
                  
                  //print('check'+btn.toString()+" i val "+i.toString());
                  radioBtns[2*i]=val;
                  });
                },
              ),
            ]),
            Row(children: <Widget>[
              Text('opt2'),
              Radio(
                value: 1,
                groupValue: radioBtns[(2*i)],
                onChanged: (val){
                  setState(() {
                    
                  
                  radioBtns[2*i]=val;
                  });
                },
              ),
            ]),
            Row(children: <Widget>[
              Text('opt3'),
              Radio(
                value: 2,
                groupValue: radioBtns[(2*i)],
                onChanged: (val){
                  setState(() {
                    
                  
                  radioBtns[2*i]=val;
                  });
                },
              ),
            ]),
          ],
        ),
      );
      allQuesWidgets.add(dispQues);
      btn+=1;
      dispQues = new Container(
        child: Column(
          children: <Widget>[
            Text('ques'+btn.toString()),
            Row(children: <Widget>[
              Text('opt1'),
              Radio(
                value: 0,
                groupValue: radioBtns[(2*i)+1],
                onChanged: (val){
                  setState(() {
                    
                  
                  radioBtns[(2*i)+1]=val;
                  });
                },
              ),
            ]),
            Row(children: <Widget>[
              Text('opt2'),
              Radio(
                value: 1,
                groupValue: radioBtns[(2*i)+1],
                onChanged: (val){
                  setState(() {
                    
                  
                  radioBtns[(2*i)+1]=val;
                  });
                },
              ),
            ]),
            Row(children: <Widget>[
              Text('opt3'),
              Radio(
                value: 2,
                groupValue: radioBtns[(2*i)+1],
                onChanged: (val){
                  setState(() {
                    
                  
                  radioBtns[(2*i)+1]=val;
                  });
                },
              ),
            ]),
          ],
        ),
      );
      allQuesWidgets.add(dispQues);
      btn+=1;
  }
}
}
