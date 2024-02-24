import 'package:flutter/material.dart';

class Newapp2 extends StatelessWidget {
  const Newapp2({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.yellow,
        // ),
        body: ListView.builder( 
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  tileColor: Colors.green,
                  title: Text('${items[index]}'),
                ),
              );
            }));
  }
}
       //Container(
      //   width: 10000,
      //   child: Column(
      //     children: [
      //       Text("Cheeell GatherinG"),
      //       ElevatedButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           child: Text('daddu'))
      //     ],
      //   ),
      // ),
    
