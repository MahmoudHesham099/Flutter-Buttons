import 'package:flutter/material.dart';

class ButtonFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.purple, Colors.black38],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            print('gradient button');
          },
          child: Center(
            child: Text(
              'Button Five',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
