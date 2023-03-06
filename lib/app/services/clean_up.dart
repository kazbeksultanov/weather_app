/// Service restores all to default and removes junk data.
abstract class CleanUpService {
  Future<void> cleanAll({bool forcedClean = false});
}
