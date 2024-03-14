import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_packages/widgets/items_widgets.dart';

final deviceInfoPlugin = DeviceInfoPlugin();

showAndroidInfo() {
  return FutureBuilder(
    future: deviceInfoPlugin.androidInfo,
    builder: (context, snapshot) {
      if (snapshot.hasError) {
        return Center(
          child: Text(snapshot.error.toString()),
        );
      } else if (snapshot.hasData) {
        AndroidDeviceInfo info = snapshot.data!;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              items('Android Id', info.id),
              items('Android Model', info.model),
              items('Android Brand', info.brand),
            ],
          ),
        );
      } else {
        return const CircularProgressIndicator();
      }
    },
  );
}
