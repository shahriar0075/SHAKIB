import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  Widget build(BuildContext context){
    return DefaultTabController(length: 8, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
          color: Colors.green,
          elevation: 20,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(child: Text("This is card"),),
          ),
        ),
      )
    ));
  }
}




