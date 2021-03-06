

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_original/Screens/games.dart';
import 'package:todo_original/Screens/home.dart';

import 'HomePage/homepage.dart';
import 'Models/Providers/TodoModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return ChangeNotifierProvider(
        create: (context) => TodoModel(),
        child:MaterialApp(
          
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes:{
          '/home':(context)=>Home(),
          '/addNew':(context)=>MyApp(),
          Games.routeName:(context)=>Games(),
          '/navBar':(context)=>MyHomePage()
        },
      theme: ThemeData(
        backgroundColor: Colors.black12,
        primarySwatch: Colors.blue,
        
        
      ),
      home: MyHomePage(),
        ),
        
        
    );
    
  }
}