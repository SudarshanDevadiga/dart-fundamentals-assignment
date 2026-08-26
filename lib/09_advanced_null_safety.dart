// ==========================================
// 1. DatabaseManager
// ==========================================

class DatabaseManager {
  late final String connectionString = _initConnection();

  String _initConnection() {
    print("Connecting to Database...");
    return "postgres://localhost:5432/db";
  }
}

// ==========================================
// 2. Never Type
// ==========================================

Never failWithUnreachable(String reason) {
  throw ArgumentError("Fatal Application Error: $reason");
}

// ==========================================
// 3. Type Promotion + Fail-Fast Guards
// ==========================================

void processInput(Object? input) {
  if (input == null) {
    failWithUnreachable("Input cannot be null");
  }

  print("Input type promoted length: ${input.toString().length}");
}

// ==========================================
// 4. Cache - Private Field Promotion
// ==========================================

class Cache {
  String? _cachedData;

  void validateCache() {
    final localData = _cachedData;

    if (localData != null) {
      print("Cache data length: ${localData.length}");
    } else {
      print("Cache is empty.");
    }
  }

  void setData(String data) {
    _cachedData = data;
  }
}

// ==========================================
// 5. Late Initialization Edge Case
// ==========================================

class LateExample {
  late String value;

  void demonstrateError() {
    try {
      print(value);
    } catch (e) {
      print("\nLate initialization error caught: $e");
    }
  }
}

// ==========================================
// 6. Nullable Data Provider
// ==========================================

Map<String, List<int>?>? getComplexData() {
  return null;
}

// ==========================================
// Main
// ==========================================

void main() {
  // ==========================================
  // 1. late final Initialization
  // ==========================================

  DatabaseManager database = DatabaseManager();

  print("Connection: ${database.connectionString}");

  // ==========================================
  // 2. Never + Fail-Fast Guard
  // ==========================================

  processInput("Dart Advanced Null Safety");

  // We do not call processInput(null) because
  // that would intentionally throw an exception.

  // ==========================================
  // 3. Private Field Promotion
  // ==========================================

  Cache cache = Cache();

  cache.validateCache();

  cache.setData("Cached information");

  cache.validateCache();

  // ==========================================
  // 4. Late Initialization Edge Case
  // ==========================================

  LateExample lateExample = LateExample();

  lateExample.demonstrateError();

  lateExample.value = "Initialized";

  print("After initialization: ${lateExample.value}");

  // ==========================================
  // 5. Complex Null-Aware Operators
  // ==========================================

  Map<String, List<int>?>? complexData =
      getComplexData();

  int scoreCount =
      complexData?['scores']?.length ?? -1;

  print("\nScores count: $scoreCount");

  // Demonstrate ??=
  complexData ??= {
    'scores': [80, 90, 95],
  };

  print("Complex data after ??=: $complexData");

  int updatedScoreCount =
      complexData?['scores']?.length ?? -1;

  print("Updated scores count: $updatedScoreCount");

  // ==========================================
  // 6. Bang Operator
  // ==========================================

  String? conditionalNullable =
      "Dart 3 Sound Null Safety";

  if (conditionalNullable != null) {
    print("\nBang operator result:");
    print(conditionalNullable!.toUpperCase());
  }
}