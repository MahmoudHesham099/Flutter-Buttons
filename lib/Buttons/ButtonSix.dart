import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            side: BorderSide(
              color: Colors.purple,
            )),
        color: Colors.white,
        textColor: Colors.purple,
        child: Text(
          'Button Six',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          print('Button Six');
        },
      ),
    );
  }
}
