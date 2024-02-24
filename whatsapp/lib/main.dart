import 'package:drawer/newapp.dart';
import 'package:drawer/whatsapp1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( debugShowCheckedModeBanner: false,
      home: whatsApp() ,
    //   home: Scaffold( backgroundColor: Colors.blue,
    //     appBar: AppBar(
    //       backgroundColor: Colors.blue[800],
    //       title: Center(child: Text("Flutter Drawer"),)
    //     ),
    //     drawer: Drawer(
    //       child: ListView(
    //         padding: EdgeInsets.zero,
          
    //         children: <Widget>[
    //           DrawerHeader(
    //             padding: EdgeInsets.zero,
    //             margin: EdgeInsets.zero,
    //             decoration: BoxDecoration(
    //               color: Colors.blue,
    //             ),
    //             child: Image.asset(
    //               'images/image1.png', 
    //               fit: BoxFit.fitWidth,
    //             ),
    //           ),
    //           ListTile(
    //             leading: Icon(Icons.account_circle),
    //             title: Text('Profile'),
    //             trailing: Icon(Icons.arrow_forward_sharp),
    //             onTap: () {
    //               // Handle profile option
    //             },
    //           ),
    //           ListTile(
    //             leading: Icon(Icons.notifications),
    //             title: Text('Notifications'),
    //             trailing: Icon(Icons.arrow_forward_sharp),
    //             onTap: () {
    //               // Handle notifications option
    //             },
    //           ),
    //           ListTile(
    //             leading: Icon(Icons.exit_to_app),
    //             title: Text('Logout'),
    //             trailing: Icon(Icons.arrow_forward_sharp),
    //             onTap: () {
    //               // Handle logout option
    //             },
    //           ),
    //           ListTile(
    //             leading: Icon(Icons.settings),
    //             title: Text('Settings'),
    //             trailing: Icon(Icons.arrow_forward_sharp),
    //             onTap: () {
    //               // Handle sign-in option
    //             },
    //           ),
    //         ],
    //       ),
    //     ),
    //     body: 
    //      ListView( 
          
    //     // padding: EdgeInsets.zero,
    //     // margin: EdgeInsets.zero,
        

    //       children:[ Image.asset('images/image2.jpg'
          
    //       )
    //       ,]
    //     ),
    //   ),
     );
  }
}