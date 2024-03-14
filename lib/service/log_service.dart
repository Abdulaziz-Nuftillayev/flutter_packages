import 'package:logger/logger.dart';

class LogService {
  static final _logger = Logger(
    filter: DevelopmentFilter(),
    printer: PrettyPrinter(),
  );

  static void d(String debug) {
    _logger.d(debug);
  }

  static void i(String info) {
    _logger.i(info);
  }

  static void e(String error) {
    _logger.e(error);
  }

  static void w(String warning) {
    _logger.w(warning);
  }
}
