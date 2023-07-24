import '1-util.dart';

Future<String> getUserId() async {
  String object_fetch = await fetchUserData();
  List object_id = object_fetch.split(',');
  List id_split = object_id[0].split(':');
  String id = id_split[1].replaceAll('"', '');
  return id;
}
