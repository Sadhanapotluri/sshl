import 'package:flutter/material.dart';
import 'package:sshl/registration.dart';
import 'package:sshl/wakeup.dart';
import 'package:sshl/splash.dart';
void main(){

  runApp(FirstSplashScreenMain());
}

class MainScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Home()
      )
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return (
      Scaffold(
          body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width:double.infinity,
        height:150.0,
        child: Column(
          children: <Widget>[
        Container(
           width:300.0,
            height:75.0,
            child:Padding(padding: EdgeInsets.all(10.0),
            child:RaisedButton(
              onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Registration()),
              );
               },
              child: Text("Let's get started",style: TextStyle( fontSize: 25.0),),
              color: Colors.amber,
              elevation: 6.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))
            ))),
            Padding(padding: EdgeInsets.all(4.0),child: GestureDetector(child:Text("Already a member?",style:TextStyle(color:Colors.black,fontSize: 20.0,)),onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Wakeup()));}
            )
            )
          ],
        ),
      )
    )
          )
      ));
  }
}
