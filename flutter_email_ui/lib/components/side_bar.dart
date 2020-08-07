import 'package:flutter/material.dart';
import 'package:flutter_email_ui/components/custom_list_tile.dart';
import 'package:flutter_email_ui/theme/theme_config.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  List tiles = [
    {
      'icon': Icons.inbox,
      'title': 'Inbox',
      'counter': '8',
      'color': ThemeConfig.lightAccent,
    },
    {
      'icon': Icons.star,
      'title': 'Starred',
    },
    {
      'icon': Icons.insert_drive_file,
      'title': 'Draft',
      'counter': '4',
      'color': Color(0xfff8ba85),
    },
    {
      'icon': Icons.delete,
      'title': 'Trash',
    },
    {
      'icon': Icons.archive,
      'title': 'Archive',
    },
    {
      'icon': Icons.settings,
      'title': 'Settings',
    },
  ];

  List colors = [
    Color(0xff2224bf),
    Color(0xfff8ba85),
    Color(0xff5adfff),
    ThemeConfig.lightAccent,
  ];

  List titles = [
    'Works',
    'Family',
    'Friends',
    'Clients',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.0,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 25.0,
          ),
          buildNewMessageButton(),
          SizedBox(
            height: 35.0,
          ),
          Flexible(
            child: ListView.builder(
              itemCount: tiles.length,
              itemBuilder: (BuildContext context, int index) {
                Map tile = tiles[index];
                return CustomListTile(
                  iconData: tile['icon'],
                  title: tile['title'],
                  enabled: index == 0,
                  counter: tile['counter'],
                  color: tile['color'],
                );
              },
            ),
          ),
          SizedBox(
            height: 55.0,
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  child: Row(
                    children: [
                      buildCircle(colors[index]),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        '${titles[index]}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  buildNewMessageButton() {
    return Container(
      height: 45.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        onPressed: () {},
        color: Theme.of(context).accentColor,
        child: Text(
          'New Message',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  buildCircle(Color color) {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
