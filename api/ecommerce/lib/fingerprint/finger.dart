import 'package:ecommerce/fingerprint/auth.dart';
import 'package:flutter/material.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('scan Fingerprint'),
            ElevatedButton.icon(
                onPressed: () async {
                  bool auth = await Authentication.authentication();
                  print('can $auth');
                },
                icon: Icon(Icons.fingerprint),
                label: Text('Scan Finger Print'))
          ],
        ),
     ),
);}
}
  
