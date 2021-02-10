import 'package:flutter/material.dart';

class ButtonFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(
          color: Colors.purple,
        )),
        color: Colors.white,
        textColor: Colors.purple,
        child: Text(
          'Button Four',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          print('Button Four');
        },
      ),
    );
  }
}
