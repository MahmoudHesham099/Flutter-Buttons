import 'package:flutter/material.dart';

class ButtonTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: RaisedButton(
        color: Colors.purple,
        textColor: Colors.white,
        child: Text(
          'Button Two',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          print('Button Two');
        },
      ),
    );
  }
}
