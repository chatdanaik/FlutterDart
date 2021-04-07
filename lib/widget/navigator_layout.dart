import 'package:flutter/material.dart';

class NavigatorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.lightBlue.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image: AssetImage('images/logo.png')),
              Text(
                'Mark Shopping',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(onPressed: () {}, child: Text('menu1')),
                  TextButton(onPressed: () {}, child: Text('menu2')),
                  TextButton(onPressed: () {}, child: Text('menu3')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
