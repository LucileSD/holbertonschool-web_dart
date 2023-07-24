import 'dart:convert';

import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    String user = await fetchUserData();
    Map<String, dynamic> data = jsonDecode(user);
    String id = data['id'];

    String orders = await fetchUserOrders(id);
    List<dynamic> userOrders = jsonDecode(orders);

    num total = 0;
    for (String product in userOrders) {
      String nameOfProduct = product.toString();
      String priceOfProduct = await fetchProductPrice(nameOfProduct);
      num price = jsonDecode(priceOfProduct);
      total += price;
    }
    return total;
  } catch (err) {
    return -1;
  }
}
