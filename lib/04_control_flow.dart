void main() {
  // ==========================================
  // 1. if / else if / else
  // ==========================================

  int score = 85;
  String grade;

  if (score >= 90) {
    grade = 'A';
  } else if (score >= 75) {
    grade = 'B';
  } else if (score >= 50) {
    grade = 'C';
  } else {
    grade = 'F';
  }

  print("Score: $score");
  print("Grade: $grade");

  // ==========================================
  // 2. Switch Statement & Switch Patterns
  // ==========================================

  Object shape = (10, 20);

  String shapeDescription = switch (shape) {
    (int w, int h) => 'Rectangle $w x $h',
    _ => 'Unknown shape',
  };

  print("\nShape: $shapeDescription");

  // ==========================================
  // 3. Loops
  // ==========================================

  List<String> items = ['A', 'B', 'C'];

  // Standard for loop
  print("\nStandard for loop:");

  for (int i = 0; i < items.length; i++) {
    print(items[i]);
  }

  // for-in loop
  print("\nfor-in loop:");

  for (String item in items) {
    print(item);
  }

  // while loop
  print("\nwhile loop:");

  int number = 1;

  while (number <= 3) {
    print(number);
    number++;
  }

  // do-while loop
  print("\ndo-while loop:");

  int doNumber = 1;

  do {
    print(doNumber);
    doNumber++;
  } while (doNumber <= 3);

  // ==========================================
  // 4. break & continue
  // ==========================================

  print("\nBreak and continue:");

  for (int i = 1; i <= 10; i++) {
    // Skip 5
    if (i == 5) {
      continue;
    }

    // Stop at 8
    if (i == 8) {
      break;
    }

    print(i);
  }

  // ==========================================
  // 5. assert
  // ==========================================

  int speed = 50;

  assert(
    speed <= 100,
    "Speed limit exceeded",
  );

  print("\nSpeed: $speed");
  print("Speed assertion passed.");
}