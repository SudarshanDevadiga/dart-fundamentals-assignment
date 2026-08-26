// ==========================================
// 1. Positional, Optional, Named & Default
// Parameters
// ==========================================

void buildUser(
  String id, {
  required String username,
  String role = "guest",
}) {
  print('ID: $id, User: $username, Role: $role');
}

// ==========================================
// 2. Arrow Function
// ==========================================

int square(int n) => n * n;

// ==========================================
// 3. First-Class Functions & Anonymous
// Functions
// ==========================================

void executeAction(Function action) {
  action();
}

// ==========================================
// 4. Lexical Closures
// ==========================================

Function makeAdder(int addBy) {
  return (int i) => i + addBy;
}

// ==========================================
// Main
// ==========================================

void main() {
  // ========================================
  // Call buildUser
  // ========================================

  buildUser(
    '101',
    username: 'Alex',
  );

  buildUser(
    '102',
    username: 'John',
    role: 'admin',
  );

  // ========================================
  // Arrow Function
  // ========================================

  int result = square(5);

  print('\nSquare of 5: $result');

  // ========================================
  // Anonymous Function
  // ========================================

  executeAction(
    () => print('Executing...'),
  );

  // ========================================
  // Lexical Closure
  // ========================================

  Function add5 = makeAdder(5);

  int sum = add5(10);

  print('\n10 + 5 = $sum');
}