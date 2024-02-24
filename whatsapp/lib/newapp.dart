import 'package:drawer/newapp2.dart';
import 'package:flutter/material.dart';

class Newapp extends StatelessWidget {
  const Newapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title:Text("Meow!!"),   
      ),
      body: Container(
        width: 2000,
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // Image.asset('images/flutter.png'),
            Image.network('https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png'),
            Image.asset('images/image1.png'),
            Text("Chill GatherinG"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Newapp2()));
                },
                child: Text("about")),
                 Container(
                   child: const CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png'),
                    
                  ),
                )
          ],
        ),
        ),
      ),
      
    );
  }
}
