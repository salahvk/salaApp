import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: 200,
          child: Image.network(
              "https://th.bing.com/th/id/OIP.wmmlFK1zD7cWH7_pDUTXvwHaE8?w=244&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7"),
        ),
      ),
    );
  }
}
