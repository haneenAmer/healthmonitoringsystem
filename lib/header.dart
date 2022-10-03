import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header ({
        Key key,
}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('images/login.jpg'),
          fit: BoxFit.cover,
        ),

        color: Colors.amber,
        borderRadius:
      BorderRadius.circular(12.0),
      ),

    );
  }
}
