import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemgmt/main.dart';
import 'package:statemgmt/new_page.dart';
import 'package:statemgmt/state_notifier.dart';

class ProviderEg extends StatelessWidget {
  const ProviderEg({super.key});

  onPressed(WidgetRef ref) {
    // ref.watch(nameProvider.notifier).update((state) => '33');
    // ref.read(statenotifier111.notifier).updateData('Suman', 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('asd'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          // final name = ref.watch(nameProvider) ?? '';
          // final name = ref.watch(statenotifier111) as User;
          return Center(
            child: Column(
              children: [
                // Text(name.userName),
                ElevatedButton(
                    onPressed: () => onPressed(ref),
                    child: const Text('Watch')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const NewPage();
                      }));
                    },
                    child: const Text('Next'))
              ],
            ),
          );
        },
      ),
    );
  }
}
