import 'package:flutter/material.dart';
import 'package:sala_app/profilePage.dart';

class BuildHead extends StatelessWidget {
  const BuildHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Profile();
          }));
        },
        child: Container(
            width: width,
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            color: Colors.blue,
            child: Column(
              children: const [
                CircleAvatar(
                    radius: 52,
                    foregroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.wmmlFK1zD7cWH7_pDUTXvwHaE8?w=244&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7")),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Kevin Pieterson',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Kevinpieterson@gmail.com',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
