import '3-util.dart';

Future<String> greetUser() async {
  try {
    String object_fetch = await fetchUserData();
    List object_split = object_fetch.split(',');
    List user_split = object_split[1].split(':');
    String name_quotes = user_split[1].replaceAll('"', '');
    String name = name_quotes.replaceAll('}', '');
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
