import 'package:flutter/material.dart';

class DecoratedFloatingActionButton extends StatelessWidget {

  const DecoratedFloatingActionButton({super.key,});
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        gradient: LinearGradient(
          colors: [Colors.green, Colors.green.shade500],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        child: Icon(Icons.message),
      ),
    );
  }
}
