import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:sala_app/model/userModel.dart';

class UserApi {
  static Future<List<User>> getUserLocally(BuildContext context) async {
    final assets = DefaultAssetBundle.of(context);
    final data = await assets.loadString('assets/user.json');
    final body = jsonDecode(data);

    return body.map<User>(User.fromJson).toList();
  }
}
