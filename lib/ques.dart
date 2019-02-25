import 'package:flutter/material.dart';

class FirstMainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DispScreen();
  }
}

class DispScreen extends State<FirstMainScreen> {
  int _radio1 = -1, _radio2 = -1;
  String selectedSlotVal = '';
  final List<Widget> ques = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
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
      SingleChildScrollView(
        child:
         Column(
          children: ques,
        ),
      )
    );
    return content;
  }

  List<Widget> getTimeButtons() {
    List<Widget> btns = [];
    Widget temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('< 5:00'),
      onPressed: () => dispQues('<5'),
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
          onPressed: () => dispQues(i.toString() + '.' + j.toString()),
        );
        btns.add(temp);
      }
    }
    temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('9:00'),
      onPressed: () => dispQues('9'),
    );
    btns.add(temp);
    temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('> 9.00'),
      onPressed: () => dispQues('>9'),
    );
    btns.add(temp);
    temp = new RaisedButton(
      color: Colors.limeAccent[700],
      child: Text('None'),
      onPressed: () => dispQues('none'),
    );
    btns.add(temp);
    return btns;
  }

  void quesList() {
    ques.clear();
    setState(() {
      Widget selectedSlot = Text('Selected timeslot: ' + selectedSlotVal);
      ques.add(selectedSlot);
      Widget dispQues = new Container(
        child: Column(
          children: <Widget>[
            Text('ques1'),
            Row(children: <Widget>[
              Text('opt1'),
              Radio(
                value: 0,
                groupValue: _radio1,
                onChanged: optSelectedQ1,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt2'),
              Radio(
                value: 1,
                groupValue: _radio1,
                onChanged: optSelectedQ1,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt3'),
              Radio(
                value: 2,
                groupValue: _radio1,
                onChanged: optSelectedQ1,
              ),
            ]),
          ],
        ),
      );
      ques.add(dispQues);
      dispQues = new Container(
        child: Column(
          children: <Widget>[
            Text('ques2'),
            Row(children: <Widget>[
              Text('opt1'),
              Radio(
                value: 0,
                groupValue: _radio2,
                onChanged: optSelectedQ2,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt2'),
              Radio(
                value: 1,
                groupValue: _radio2,
                onChanged: optSelectedQ2,
              ),
            ]),
            Row(children: <Widget>[
              Text('opt3'),
              Radio(
                value: 2,
                groupValue: _radio2,
                onChanged: optSelectedQ2,
              ),
            ]),
          ],
        ),
      );
      ques.add(dispQues);
    });
  }

  void dispQues(slot) {
    _radio1 = -1;
    _radio2 = -1;
    selectedSlotVal = slot;
    quesList();
  }

  void optSelectedQ1(val) {
    _radio1 = val;
    quesList();
  }

  void optSelectedQ2(val) {
    _radio2 = val;
    quesList();
  }
}