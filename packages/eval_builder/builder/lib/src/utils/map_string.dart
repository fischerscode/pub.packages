extension MappableString on String {
  T map<T>(T Function(String s) map) {
    return map(this);
  }
}
