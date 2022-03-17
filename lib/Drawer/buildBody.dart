import 'package:flutter/material.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.favorite_outline_rounded),
          title: Text('Favourites'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.update),
          title: Text('Updates'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.storage),
          title: Text('Storage'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Log out'),
          onTap: () {},
        ),
        SizedBox(
          height: 185,
        ),
        Text('SalaApp version 1.0')
      ],
    );
  }
}
