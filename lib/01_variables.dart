
void main() {
  // ==========================================
  // 1. var Keyword
  // ==========================================

  var cityName = "Tokyo";

  print("City: $cityName");
  print("Runtime Type: ${cityName.runtimeType}");

  // ==========================================
  // 2. Object vs dynamic
  // ==========================================

  Object objVal = 42;

  print("\nObject value: $objVal");
  print("Object runtime type: ${objVal.runtimeType}");

  // Object does not allow arbitrary methods because
  // the compiler only knows that objVal is an Object.
  //
  // Uncommenting the following line will cause a
  // compile-time error:
  //
  // objVal.nonExistentMethod();

  dynamic dynVal = "Hello";

  print("\nDynamic initial value: $dynVal");

  dynVal = 100;

  print("Dynamic after reassignment: $dynVal");

  // Because dynVal is now an int, calling toUpperCase()
  // causes a runtime error.
  //
  // We use try-catch so the rest of the assignment
  // can continue executing.
  try {
    print(dynVal.toUpperCase());
  } catch (e) {
    print("Runtime error: $e");
  }

  // ==========================================
  // 3. final vs const
  // ==========================================

  final DateTime currentTime = DateTime.now();

  const double piValue = 3.14159;

  print("\nCurrent time: $currentTime");
  print("Pi value: $piValue");

  // final can be assigned once at runtime.
  // DateTime.now() is evaluated when the program runs.
  //
  // const must be known at compile time, so
  // DateTime.now() cannot be assigned to a const variable.

  // ==========================================
  // 4. int & double
  // ==========================================

  int age = 25;
  double temperature = 98.6;

  print("\nAge: $age");
  print("Temperature: $temperature");

  print("Age / 2: ${age / 2}");
  print("Temperature / 2: ${temperature / 2}");

  // ==========================================
  // 5. String & Interpolation
  // ==========================================

  String firstName = "Ada";
  String lastName = "Lovelace";

  String userInfo =
      "User: $firstName $lastName (Length: ${"$firstName $lastName".length})";

  print("\n$userInfo");

  // ==========================================
  // 6. bool
  // ==========================================

  bool isLoggedIn = false;

  print("\nLogged in: $isLoggedIn");

  isLoggedIn = !isLoggedIn;

  print("After NOT operation: $isLoggedIn");

  // ==========================================
  // 7. Runes & UTF-32
  // ==========================================

  String emoji = "😀";
  
  print("\nEmoji: $emoji");

  print("Code units: ${emoji.codeUnits}");
  print("Runes: ${emoji.runes}");
}

