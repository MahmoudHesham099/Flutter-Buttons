import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscribeButton extends StatefulWidget {
  @override
  _SubscribeButtonState createState() => _SubscribeButtonState();
}

class _SubscribeButtonState extends State<SubscribeButton> {
  bool _sub = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: RaisedButton(
        color: _sub ? Colors.grey : Colors.red,
        textColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _sub ? 'Subscribed!' : 'SUBSCRIBE!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(width: 10),
            Icon(_sub ? Icons.done : Icons.notifications)
          ],
        ),
        onPressed: () {
          setState(() {
            _sub = !_sub;
          });
        },
      ),
    );
  }
}
