import 'package:flutter/material.dart';

void main(){

  runApp( MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    
  ));
}


class HomePage extends StatelessWidget {

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Container(
        color: Colors.teal,
        height: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),        
              width: 100,
              color: Colors.red,
              height: 100,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(10), 
              color: Colors.green,       
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(10), 
              color: Colors.blue,       
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
          ],
        )
      ),

      drawer:  Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Basanta Karki"),
               accountEmail:  Text("dk1684435@gmail.com"),
               currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1453396450673-3fe83d2db2c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
               ),
            ),

             ListTile(
              leading: Icon(Icons.email),
              title: Text("Herald College"),
              subtitle: Text("herald.college.edu.np"),
              trailing: Icon(Icons.edit),
              onTap: null,
            ),
            
             ListTile(
              leading: Icon(Icons.person),
              title: Text("Basanta Karki"),
              subtitle: Text("Backend developer"),
              trailing: Icon(Icons.edit),
            )
            
            
          ],
        ),
      ),


      floatingActionButton: const FloatingActionButton(onPressed: null,
        child: Icon(Icons.edit),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      
    );
  }
}