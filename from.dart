import 'package:flutter/material.dart';

void main() {
  runApp(const HomeActivity());
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnakbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext){
          return Expanded(
              child:AlertDialog(
                title: Text("Alert!"),
                content: Text("Do you accept it"),
                actions: [
                  TextButton(onPressed: (){Navigator.of(context).pop(); MySnakbar("You accept it", context);}, child: Text("Yes")),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No"))
                ],
              )
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity,60),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))
        )
    );

    return Scaffold(
      appBar: AppBar(
        title:
        const Text('Shakib', style: TextStyle(color: Colors.white)),
        toolbarHeight: 60,
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                MySnakbar("Comments", context);
              },
              icon: const Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnakbar("Settings", context);
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnakbar("Search", context);
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.all(20),
           child: TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText:  'First Name'
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(20),
           child: TextField(
             decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText:  'Last Name'
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(20),
           child: TextField(
             decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText:  'Email Adress'
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(20),
           child: ElevatedButton(onPressed: (){}, child: Text('Submit'),style: buttonStyle,)
         ),
       ],
      )
    );
  }
}
