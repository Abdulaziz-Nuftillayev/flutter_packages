import 'package:flutter_packages/service/log_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../service/toast_class.dart';

final homeRef =
    StateNotifierProvider<HomeNotifier, int>((ref) => HomeNotifier());

class HomeNotifier extends StateNotifier<int> {
  HomeNotifier() : super(0);

  void increment() {
    if (state < 10) {
      state++;
    } else {
      Utils.showToast('Tamom');
      state = 0;
    }
    LogService.e('ERROR');
  }

  void decrement() {
    if (state > 0) {
      state--;
    }
  }
}
