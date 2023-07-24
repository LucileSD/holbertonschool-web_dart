import '2-util.dart';

Future<void> getUser() async {
  try {
    String object_fetch = await fetchUser();
    print('User: ${object_fetch}');
  } catch (err) {
    print('error caught: ${err}');
  }
}
