import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: Text('Dashboard'),
  centerTitle: true,
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'Item1',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);
