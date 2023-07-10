class HiveDB {
  HiveDB._internal();
  static HiveDB instance = HiveDB._internal();
  factory HiveDB() {
    // factory contrastor for creating singleton class
    return instance; //these class have only one instance
  }
}
