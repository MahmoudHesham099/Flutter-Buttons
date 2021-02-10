import 'package:flutter/material.dart';

class ButtonThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: Colors.purple,
            )),
        color: Colors.white,
        textColor: Colors.purple,
        child: Text(
          'Button Three',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          print('Button Three');
        },
      ),
    );
  }
}
