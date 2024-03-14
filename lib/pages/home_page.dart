import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_packages/service/log_service.dart';
import 'package:flutter_packages/view_model/home_vm.dart';
import 'package:flutter_packages/widgets/android_device_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(homeRef);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Packages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    ref.read(homeRef.notifier).decrement();
                    LogService.e('ERROR');
                  },
                  child: const Icon(CupertinoIcons.minus),
                ),
                Text(ref.read(homeRef).toString()),
                FloatingActionButton(
                  onPressed: () {
                    ref.read(homeRef.notifier).increment();
                    LogService.e('ERROR');
                  },
                  child: const Icon(CupertinoIcons.plus),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: showAndroidInfo(),
            )
          ],
        ),
      ),
    );
  }
}
