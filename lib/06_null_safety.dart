// ==========================================
// UserProfile class - late keyword
// ==========================================

class UserProfile {
  // Delayed initialization
  late String bio;

  void initBio() {
    bio = "Developer from NYC";
  }
}

// ==========================================
// Never Type
// ==========================================

Never throwFatalError(String msg) {
  throw Exception("Fatal Error: $msg");
}

// ==========================================
// Main
// ==========================================

void main() {
  // ==========================================
  // 1. late Keyword
  // ==========================================

  UserProfile profile = UserProfile();

  profile.initBio();

  print("User Bio: ${profile.bio}");

  // A late variable must be initialized before
  // it is read. Reading it before initialization
  // would cause LateInitializationError.

  // ==========================================
  // 2. Never Type
  // ==========================================

  // A function returning Never never completes
  // normally. It either throws an exception or
  // otherwise never reaches a normal return.

  print("\nNever function declared successfully.");

  // We do NOT call throwFatalError() here because
  // it would intentionally terminate the program.

  // ==========================================
  // 3. Non-Nullable vs Nullable Types
  // ==========================================

  int nonNullable = 10;
  int? nullableVal = null;

  print("\nNon-nullable value: $nonNullable");
  print("Nullable value: $nullableVal");

  // ==========================================
  // 4. If-Null Operator (??)
  // & Null-Aware Assignment (??=)
  // ==========================================

  int result = nullableVal ?? 0;

  print("Result using ??: $result");

  nullableVal ??= 5;

  print("Nullable value after ??=: $nullableVal");

  // ==========================================
  // 5. Null-Aware Access (?.)
  // & Bang Operator (!)
  // ==========================================

  String? text;

  // Safe access. Since text is null,
  // this prints null instead of causing an error.
  print("\nText length using ?.: ${text?.length}");

  // Assign a non-null value before using !
  text = "Dart";

  //  tells Dart that we know text is not null.
  print("Text length using !: ${text!.length}");

  // ==========================================
  // 6. Type Promotion
  // ==========================================

  Object data = "Smart Cast";

  if (data is String) {
    // Inside this block Dart promotes data
    // from Object to String.
    print("\nUppercase data: ${data.toUpperCase()}");
  }
}