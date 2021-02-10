import 'package:buttons/Buttons/ButtonFive.dart';
import 'package:buttons/Buttons/ButtonFour.dart';
import 'package:buttons/Buttons/ButtonOne.dart';
import 'package:buttons/Buttons/ButtonSix.dart';
import 'package:buttons/Buttons/ButtonThree.dart';
import 'package:buttons/Buttons/ButtonTwo.dart';
import 'package:buttons/Buttons/MyDropdown.dart';
import 'package:buttons/Buttons/MyPopMenu.dart';
import 'package:buttons/Buttons/MySlider.dart';
import 'package:buttons/Buttons/SubscribeButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _checkedValue = false;
  bool _switchValue = false;
  bool _like = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Flutter Buttons'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonOne(),
                  ButtonTwo(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonThree(),
                  ButtonFour(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonFive(),
                  ButtonSix(),
                ],
              ),
              MySlider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyDropdown(),
                  Container(
                    width: 180,
                    child: CheckboxListTile(
                      title: Text('Checkbox'),
                      value: _checkedValue,
                      activeColor: Colors.purple,
                      onChanged: (val) {
                        setState(() {
                          _checkedValue = val;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoSwitch(
                    value: _switchValue,
                    activeColor: Colors.purple,
                    trackColor: Colors.black,
                    onChanged: (val) {
                      setState(() {
                        _switchValue = val;
                      });
                    },
                  ),
                  MyPopMenu(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SubscribeButton(),
                  IconButton(
                      icon: Icon(
                        _like ? Icons.favorite : Icons.favorite_border,
                        color: _like ? Colors.red : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _like = !_like;
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
