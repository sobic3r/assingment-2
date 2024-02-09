import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title:const Center(child: Text("Chess Pattern")),
            backgroundColor: Colors.amber,
          ),
          body: SingleChildScrollView(scrollDirection: Axis.vertical, 
          child:
          Column(children: [wbw(),bwb(),wbw(),bwb(),wbw(),bwb(),wbw(),bwb(),wbw()]))
          // Column(children: [])
            
            // child : Row(
            //   children: [
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color:  Colors.black,
            //   ),
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.white,
            //   ),
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.black,
            //   ),
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.white,
            //   ),
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.black,
            //   ),
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.white,
            //   ),
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.black,
            //   ),
            //   Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.white,
            //   ),
            // ]),
          ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home : Scaffold(
  //   appBar: AppBar(title: const Text('Chill GatherinG')),
  //   body: const Center(
  //     child: Text(
  //       "Welcome to Wanjii GatherinG!!!",
  //       style: TextStyle(
  //         color: Colors.black,
  //         fontStyle: FontStyle.italic,
  //         fontSize: 40.0,
  //       ),
  //     ),
  //   ),
  //   floatingActionButton: FloatingActionButton(
  //     elevation: 10.0,
  //     child: const Icon(Icons.add),
  //     onPressed: () {},
  //   ),
  //   drawer: Drawer(
  //     child: ListView(
  //       children: const <Widget>[
  //         DrawerHeader(
  //           decoration: BoxDecoration(
  //             color: Colors.green,
  //           ),
  //           child: Text(
  //             'BBQ PARtY',
  //             style: TextStyle(
  //               color: Colors.green,
  //               fontSize: 24,
  //             ),
  //           ),
  //         ),
  //         ListTile(
  //           title: Text('Tikka'),
  //           leading: Icon(Icons.food_bank),
  //         ),
  //         ListTile(
  //           title: Text('Paratha'),
  //           leading: Icon(Icons.food_bank_rounded),
  //         ),
  //       ],
  //     ),
  //   ),
  //   bottomNavigationBar: BottomNavigationBar(
  //       currentIndex: 0,
  //       fixedColor: Colors.green,
  //       items: const [
  //         BottomNavigationBarItem(
  //           label: "Home",
  //           icon: Icon(Icons.home),
  //         ),
  //         BottomNavigationBarItem(
  //           label: "Search",
  //           icon: Icon(Icons.search),
  //         ),
  //         BottomNavigationBarItem(
  //           label: "Profile",
  //           icon: Icon(Icons.account_circle),
  //         ),
  //       ],
  //       onTap: (int indexOfItem) {}),
  //   )
  // );
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: const Text("Chess board"),
//           title: const Text("ChillGathering"),
//           actions: const [Text("Sabeet")],
//           backgroundColor:  Colors.red,
//         ),
//         body: Row(
//           children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//               // customContainer(32, 32, Colors.yellow, "Uzair",),
//               // customContainer(45, 45, Colors.green, "waleed",),
//               // customContainer(55, 55, Colors.pink, "saboor",),
//               Container(
//                 height: 400,
//                 width: 400,
//                 color: const Color.fromARGB(215, 227, 76, 25),
//                 child: const Text("LOL" , style: TextStyle(color:Colors.black,fontSize: 40,fontStyle: FontStyle.italic),),

//               ),
//               Container(
//                 height: 400,
//                 width: 400,
//                 color: const Color.fromARGB(214, 180, 25, 227),
//                 child: const Text("talha"),
//               ),
//               Container(
//                 height: 400,
//                 width: 400,
//                 color: const Color.fromARGB(214, 25, 171, 27),
//                 child: const Text("enan"),
//               ),
//               Container(
//                 height: 400,
//                 width: 400,
//                 color: const Color.fromARGB(90, 23, 66, 88),
//                 child: const Text("enan"),
//               ),
//             ]),
//           ),
//         ]),
//       ),
//     );
//   }
// }

// Widget customContainer(height, width, color, text) {
//   return Container(
//     height: height,
//     width: width,
//     color: color,
//     child: text("$text"),
//   );
}

blackContainer() {
  return Container(
    height: 92,
    width: 72,
    color: Colors.black,
  );
}

whiteContainer() {
  return Container(
    height: 92,
    width: 72,
    color: Colors.white,
  );
}

wbw() {
  return Row(
    children: [
      whiteContainer(),
      blackContainer(),
      whiteContainer(),
      blackContainer(),
      whiteContainer(),
      blackContainer()
    ],
  );
}

bwb() {
  return Row(
    children: [
      blackContainer(),
      whiteContainer(),
      blackContainer(),
      whiteContainer(),
      blackContainer(),
      whiteContainer()
    ],
  );
}
