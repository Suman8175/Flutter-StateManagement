import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:statemgmt/future_provider.dart';
import 'package:statemgmt/state_notifier.dart';

// final nameProvider = StateProvider<String?>((ref) => null);
/* final statenotifier111 =
    StateNotifierProvider((ref) => ExampleOfSN(User(userName: '', age: 0))); */

final futureprov = FutureProvider((ref) async {
  var url = Uri.parse('https://dummyjson.com/products/1');
  var response = await http.get(url);
  var data = User.fromJson(response.body);
  return data;
});
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FutureProv(),
    );
  }
}
