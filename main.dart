import 'package:flutter/material.dart';
import 'package:my_app/Screen/login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      theme: ThemeData(
        fontFamily: 'OpenSans', 
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 248, 199, 222),
        )
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 248, 199, 222),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(
                'https://media.istockphoto.com/id/1374485813/vector/3d-white-clipboard-task-management-todo-check-list-with-pencil-efficient-work-on-project.jpg?s=612x612&w=0&k=20&c=oHKBMqTKxzZEkm6k-8I7MGfhpft5DVSeT8qzXZNFoPM=',
              ),
              
              fit: BoxFit.contain,
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()), 
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                backgroundColor: const Color.fromARGB(255, 172, 234, 244),
                textStyle: TextStyle(fontSize: 17),
              ),
             child: Row(
                 mainAxisSize: MainAxisSize.min,
                   children: [
                   Icon(Icons.login),
                      SizedBox(width: 6),
                        Text('Login'),
                         ],
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
