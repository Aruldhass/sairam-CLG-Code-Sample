import 'package:flutter/material.dart';
import 'package:my_app/Screen/Elder.dart';
import 'package:my_app/Screen/child.dart';
import 'package:my_app/Screen/students.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
        
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
          
              // Children Button
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Child()
                ),
                  );
                },
                
                icon: const Icon(Icons.child_care,size: 20,),
                label: const Text("Children",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(450, 50), // Width: 150, Height: 50
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Optional
                ),
              ),
              const SizedBox(height: 10),
          
              // Students Button
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Students()
                ),
                  );
                },
                icon: const Icon(Icons.school , size: 20,),
                label: const Text("Students",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(450, 50), // Width: 150, Height: 50
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Optional
                ),
              ),
              const SizedBox(height: 10),
          
              // Elderly Button
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Elder()
                ),
                  );
                },
                icon: const Icon(Icons.elderly,size: 20,),
                label: const Text("Elderly",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(450, 50), // Width: 150, Height: 50
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Optional
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
