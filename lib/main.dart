import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sala_app/Drawer/buildBody.dart';
import 'package:sala_app/Drawer/buildHead.dart';
import 'package:sala_app/chat_contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.amber, Colors.cyan],
                    begin: Alignment.topRight,
                    end: Alignment.topLeft)),
          ),
          title: Text('SalaApp'),
        ),
        drawer: NavigationDrawer(),
        body: Chat(),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [BuildHead(), BuildBody()],
      ),
    );
  }
}
