import 'package:flutter/material.dart';
import 'package:sala_app/API/userApi.dart';
import 'package:sala_app/model/userModel.dart';

class Chat extends StatelessWidget {
  Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
        future: UserApi.getUserLocally(context),
        builder: (context, snapshot) {
          final users = snapshot.data;

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Some error occured'),
                );
              } else {
                return buildUsers(users!);
              }
          }
        });
  }

  Widget buildUsers(List<User> users) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text(user.username),
          leading: CircleAvatar(
            foregroundImage: NetworkImage(user.urlAvatar),
          ),
          subtitle: Text(user.email),
        );
      },
      physics: BouncingScrollPhysics(),
      itemCount: users.length,
    );
  }
}
