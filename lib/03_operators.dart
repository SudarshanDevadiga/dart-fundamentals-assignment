class Student {
  String name = '';
  int score = 0;

  void display() => print('$name scored $score');
}

void main() {
  // ==========================================
  // 1. Arithmetic & Relational Operators
  // ==========================================

  int remainder = 17 % 4;
  int integerDivision = 17 ~/ 4;

  print("17 % 4 = $remainder");
  print("17 ~/ 4 = $integerDivision");

  bool comparison = 10 >= 10;

  print("Is 10 >= 10? $comparison");

  // ==========================================
  // 2. Type Test (is) & Type Cast (as)
  // ==========================================

  dynamic val = "Dart Language";

  if (val is String) {
    print("\nval is a String");
  }

  String stringVal = val as String;

  print("String value: $stringVal");
  print("String length: ${stringVal.length}");

  // ==========================================
  // 3. Logical & Ternary Operators
  // ==========================================

  bool hasTicket = true;
  bool hasId = false;

  bool accessCheck = hasTicket && hasId;

  print("\nHas ticket AND ID: $accessCheck");

  String status = hasTicket ? "Allowed" : "Denied";

  print("Status: $status");

  // ==========================================
  // 4. Cascade (..) Operator
  // ==========================================

  Student student = Student()
    ..name = 'John'
    ..score = 95
    ..display();

  // The cascade operator allows us to perform
  // multiple operations on the same object.

  // ==========================================
  // 5. Null-Aware Cascade (?..)
  // ==========================================

  Student? nullableStudent;

  nullableStudent
    ?..name = 'Alice'
    ..score = 90
    ..display();

  print("\nNull-aware cascade completed safely.");
}