import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final bool enabled;
  final String counter;
  final Color color;

  CustomListTile(
      {this.iconData, this.title, this.enabled, this.counter, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                color: enabled ? Colors.black : Colors.grey,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                title,
                style: TextStyle(
                  color: enabled ? Colors.black : Colors.grey,
                ),
              ),
            ],
          ),
          counter != null
              ? Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '$counter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.0,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
