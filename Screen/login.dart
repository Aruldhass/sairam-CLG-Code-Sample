import 'package:flutter/material.dart';
import 'package:my_app/Screen/first.dart';

class Login extends StatelessWidget {
  final TextEditingController idController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const CircleAvatar(
                child: Icon(Icons.person, size: 80),
                radius: 50,
              ),
              const SizedBox(height: 20),
              const Text('Login', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              Container(
                width: 500,
                child: TextField(
                  controller: idController,
                  decoration: const InputDecoration(
                    labelText: 'User ID',
                    prefixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 500,
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 172, 234, 244),
                  textStyle: const TextStyle(fontSize: 17),
                ),
                onPressed: () {
                  String id = idController.text;

                  if (id.contains("@gmail.com")) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  First()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Invalid id or password Please corret the format like abdc@gmail.com',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }
                },
                child: SizedBox(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.turn_right, size: 20),
                      SizedBox(width: 10),
                      Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
