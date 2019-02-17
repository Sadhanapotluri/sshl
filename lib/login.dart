import 'package:flutter/material.dart';
import 'package:sshl/wakeup2.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login>{
@override
 Widget build(BuildContext context){

   return
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(resizeToAvoidBottomPadding: false,
      body:Center(child:Align(alignment: Alignment.center,
          child:Container(height:400.0,
        child:
      Column(
        children: <Widget>[
          
          Padding(padding:EdgeInsets.all(8.0),child:TextField(
            decoration:(
              InputDecoration(
                labelText: 'Email id',
                hintText: 'Enter your Email-id',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              )
            ),
          )
          ),
          Padding(padding:EdgeInsets.all(8.0),child:TextField(
            decoration:(
              InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              )
            ),
          )
          ),
          Container(height:60.0,
          width:200.0,
          child:
          Padding(padding:EdgeInsets.all(8.0),child:
          RaisedButton(
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WakeUpScreen()),
              );
            },
            child: Text("Login",style: TextStyle( fontSize: 25.0)),
            color: Colors.amber,
              elevation: 6.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))
          )
          )),
          
          Padding(padding:EdgeInsets.all(5.0),child:Text("or login with", style: TextStyle(fontSize: 20.0))),
          Padding(padding:EdgeInsets.all(5.0),child:Row(children:
          <Widget> [
           Expanded(child: SizedBox(
              height: 75.0,
            width: 75.0,
              child:IconButton(icon:Image(image:AssetImage('images/google.png'),
              color:null),
              iconSize: 30.0,
              onPressed: (){ },)
            )
            ),
            Expanded(child: SizedBox(
              height: 75.0,
            width: 75.0,
              child:IconButton(icon:Image(image:AssetImage('images/fbicon.png'),
              color:null),
              iconSize: 30.0,
              onPressed: (){ },)
            )
            ),
            Expanded(child: SizedBox(
              height: 80.0,
            width: 80.0,
              child:IconButton(icon:Image(image:AssetImage('images/email.png'),height:73.0,width:73.0,
              color:null),
              iconSize: 30.0,
              onPressed: (){ },)
            )
            )
            
          ]
          )
          ),
        ],
      ))
      )
      )
      )
   );
 }
}
