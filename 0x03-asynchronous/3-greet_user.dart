import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    String object_fetch = await fetchUserData();
    Map<String, dynamic> data = jsonDecode(object_fetch);
    String name = data['username'];
    return ('Hello ${name}');
  } catch (err) {
    return ('error caught: ${err}');
  }
}

Future<String> loginUser() async {
  bool credits = await checkCredentials();
  if (credits == true) {
    print('There is a user: true');
    return (greetUser());
  } else {
    print('There is a user: false');
    return 'Wrong credentials';
  }
}
