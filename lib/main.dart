import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final appTitle = 'BigPharma';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: HomePage(title: appTitle),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  HomePage({Key ? key, required this.title}): super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text(title)),
     body: Center(child: Text('Bienvenue')),
     drawer: Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: <Widget>[
           DrawerHeader(
             decoration: BoxDecoration(
               color: Colors.blue,
             ),
             child: Text('Drawer header'),
           ),
           ListTile(
             title: Text('Acceuil'),
             onTap: (){

             },
           ),
           ListTile(
             title: Text('Mon Profile'),
             onTap: (){
               Navigator.pop(context);
             },
           ),
     ListTile(
       title: Text('Trouver mes médicaments'),
       onTap: (){
         Navigator.pop(context);
       },
     ),
     ListTile(
       title: Text(''),
     ),
           ListTile(
             title: Text('Pharmacies de garde')
           )
         ],
       ),
     ),
   );
  }
}