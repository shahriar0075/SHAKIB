import 'package:flutter/material.dart';

void main(){
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

  MySnakbar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          title: Text('Shakib',
          style: TextStyle(
            color: Colors.white
          )
          ),
          toolbarHeight: 60,
          backgroundColor: Colors.blue,
          elevation: 0,
          actions: [
            IconButton(onPressed: (){MySnakbar("Comments", context);}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){MySnakbar("Settings", context);}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){MySnakbar("Search", context);}, icon: Icon(Icons.search)),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){
          MySnakbar("Add Sucessfully", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.blue,
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_emergency), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index){
          if(index==0){
            MySnakbar("You are in home", context);
          }
          if(index==1){
            MySnakbar("You are in Contact", context);
          }
          if(index==2){
            MySnakbar("You are in Profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
              decoration: BoxDecoration( color: Colors.blue),
              accountName: Text("Shakib"),
              accountEmail: Text(""),
                  currentAccountPicture: const CircleAvatar( backgroundImage: NetworkImage("https://i.pinimg.com/564x/3c/93/ea/3c93ea680fcc06213992f2e976e66235.jpg"),

                  )
            )
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){MySnakbar("You are in home", context);}),
            ListTile(leading: Icon(Icons.contact_emergency),title: Text("Contact"), onTap: (){MySnakbar("You are in Contact", context);}),
            ListTile(leading: Icon(Icons.phone),title: Text("Phone"), onTap: (){MySnakbar("You are in Phone", context);}),
            ListTile(leading: Icon(Icons.email),title: Text("Email"), onTap: (){MySnakbar("You are in Email", context);}),
            ListTile(leading: Icon(Icons.person),title: Text("Profile"), onTap: (){MySnakbar("You are in Profile", context);}),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration( color: Colors.blue),
                    accountName: Text("Shakib"),
                    accountEmail: Text(""),
                    currentAccountPicture: const CircleAvatar( backgroundImage: NetworkImage("https://i.pinimg.com/564x/3c/93/ea/3c93ea680fcc06213992f2e976e66235.jpg"),

                    )
                )
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){MySnakbar("You are in home", context);}),
            ListTile(leading: Icon(Icons.contact_emergency),title: Text("Contact"), onTap: (){MySnakbar("You are in Contact", context);}),
            ListTile(leading: Icon(Icons.phone),title: Text("Phone"), onTap: (){MySnakbar("You are in Phone", context);}),
            ListTile(leading: Icon(Icons.email),title: Text("Email"), onTap: (){MySnakbar("You are in Email", context);}),
            ListTile(leading: Icon(Icons.person),title: Text("Profile"), onTap: (){MySnakbar("You are in Profile", context);}),
          ],
        ),
      ),
      );
  }
}
