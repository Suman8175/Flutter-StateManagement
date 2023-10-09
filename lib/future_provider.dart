import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemgmt/main.dart';

class FutureProv extends StatelessWidget {
  const FutureProv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(
        builder: (context, ref, child) {
          // ignore: unused_local_variable
          var user = ref.watch(futureprov);
          return user.when(data: (val) {
            return Center(
              child: Text(val.title),
            );
          }, error: (error, stackTrace) {
            return Center(
              child: Text(error.toString()),
            );
          }, loading: () {
            return const CircularProgressIndicator();
          });
        },
      ),
    );
  }
}
