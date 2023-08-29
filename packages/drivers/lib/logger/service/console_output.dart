import 'package:drivers/logger/logger.dart';

class ConsoleOutput {
  void output(OutputEvent event) {
    // ignore: avoid_print
    event.lines.forEach(print);
  }
}
