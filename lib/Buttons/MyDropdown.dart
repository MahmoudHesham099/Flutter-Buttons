import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String _dropdownValue = 'Preview';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      child: DropdownButton(
        isExpanded: true,
        value: _dropdownValue,
        items: [
          DropdownMenuItem(
              value: 'Preview',
              child: Row(
                children: [
                  Icon(Icons.remove_red_eye),
                  SizedBox(width: 15),
                  Text('preview'),
                ],
              )),
          DropdownMenuItem(
              value: 'Share',
              child: Row(
                children: [
                  Icon(Icons.person_add),
                  SizedBox(width: 15),
                  Text('share'),
                ],
              )),
          DropdownMenuItem(
              value: 'Get Link',
              child: Row(
                children: [
                  Icon(Icons.link),
                  SizedBox(width: 15),
                  Text('Get Link'),
                ],
              )),
        ],
        onChanged: (index) {
          setState(() {
            _dropdownValue = index;
          });
        },
      ),
    );
  }
}
