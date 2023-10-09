import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemgmt/main.dart';
import 'package:statemgmt/state_notifier.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        // final newName = ref.watch(nameProvider) ?? '';
        // final stateNotifierName = ref.watch(statenotifier111) as User;
        return Center(
          child: Column(
            children: [
              // Text(stateNotifierName.userName),
              // Text((stateNotifierName.age).toString())
            ],
          ),
        );
      }),
    );
  }
}
