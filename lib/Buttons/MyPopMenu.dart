import 'package:flutter/material.dart';

class MyPopMenu extends StatefulWidget {
  @override
  _MyPopMenuState createState() => _MyPopMenuState();
}

class _MyPopMenuState extends State<MyPopMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Icon(
        Icons.more_vert,
        color: Colors.black,
        size: 30,
      ),
      itemBuilder: (_) {
        return <PopupMenuItem>[
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.remove_red_eye),
                SizedBox(width: 15),
                Text('preview'),
              ],
            ),
            value: 'preview',
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.person_add),
                SizedBox(width: 15),
                Text('share'),
              ],
            ),
            value: 'share',
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.link),
                SizedBox(width: 15),
                Text('get link'),
              ],
            ),
            value: 'link',
          ),
        ];
      },
      onSelected: (val) {
        if (val == 'preview') {
          print('preview');
        } else if (val == 'share') {
          print('Share');
        } else if (val == 'link') {
          print('Get Link');
        }
      },
    );
  }
}
