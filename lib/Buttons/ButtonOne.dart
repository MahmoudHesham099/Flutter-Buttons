import 'package:flutter/material.dart';

class ButtonOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.purple,
        textColor: Colors.white,
        child: Text(
          'Button One',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: (){
          print('Button one');
        },
      ),
    );
  }
}
