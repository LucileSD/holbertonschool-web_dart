import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  String object_fetch = await fetchUserData();
  Map<String, dynamic> data = jsonDecode(object_fetch);
  String id = data['id'];
  return id;
}
