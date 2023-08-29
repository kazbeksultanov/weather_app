import 'package:drivers/logger/logger.dart';
import 'package:share_plus/share_plus.dart';

class LogUseCaseImpl extends LogUseCase {
  final LogsStorage storage = LogsStorage();

  @override
  Future<void> clearLog() async {
    await storage.deleteLogs();
  }

  @override
  Future<List<LogEvent>> getLogs() async {
    return storage.getLogs();
  }

  @override
  Future<void> shareLogs() async {
    final file = await storage.file;
    await Share.shareXFiles([XFile(file.path, name: 'logs')]);
  }
}
