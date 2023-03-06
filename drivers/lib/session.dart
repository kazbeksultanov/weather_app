abstract class Session {
  Future<SessionSignature> sign();
  Future<Map<String, String>> get header;
}

abstract class SessionSignature {}
