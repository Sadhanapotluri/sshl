import 'package:flutter/material.dart';

class profile extends StatefulWidget{
 @override
   State<StatefulWidget> createState() {
    // TODO: implement createState
    return _profile();
  }
}
class _profile extends State<profile>{

  int _selectedIndex = 1;
 final _widgetOptions = [
   Text('Index 0: Previous'),
   Text('Index 1: Profile'),
   Text('Index 2: Statistics'),
   Text('Index 3: Premium'),
   Text('Index 4: Profile'),
 ];

   @override
  Widget build(BuildContext context){
    return (MaterialApp(
             debugShowCheckedModeBanner: false,
             home:Scaffold(
               body:Center(child: _widgetOptions.elementAt(_selectedIndex),),
                  bottomNavigationBar:Material(color:Colors.red,child:BottomNavigationBar(
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),backgroundColor: Colors.pink),
         BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
         BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
         BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
       ],
       currentIndex: _selectedIndex,
       fixedColor: Colors.blue,
       onTap: _onItemTapped,
     ),
                  )
                  )
             )
    
   );
  }

   void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }
}
