void main() {
  // ==========================================
  // 1. List
  // ==========================================

  // Create a growable List<int>
  List<int> numbers = [10, 20, 30];

  print("Original List: $numbers");

  // Add 40 to the list
  numbers.add(40);

  print("After adding 40: $numbers");

  // Remove 10 from the list
  numbers.remove(10);

  print("After removing 10: $numbers");

  // Print the second item
  print("Second item: ${numbers[1]}");

  // ==========================================
  // 2. Set
  // ==========================================

  // A Set automatically removes duplicate values.
  Set<String> fruits = {"apple", "banana", "orange"};

  print("\nSet: $fruits");

  // The duplicate "apple" appears only once.
  print("Set length: ${fruits.length}");

  // ==========================================
  // 3. Map
  // ==========================================

  Map<String, dynamic> student = {
    'name': 'Alex',
    'grade': 'A',
  };

  // Add age to the Map
  student['age'] = 20;

  print("\nStudent Map: $student");

  print("Student Name: ${student['name']}");
  print("Student Grade: ${student['grade']}");
  print("Student Age: ${student['age']}");

  // ==========================================
  // 4. Type Conversion
  // ==========================================

  // Convert String to int
  String numberString = "123";

  int convertedNumber = int.parse(numberString);

  print("\nOriginal String: $numberString");
  print("Converted int: $convertedNumber");
  print("Converted type: ${convertedNumber.runtimeType}");

  // Convert double to String with 1 decimal place
  double price = 45.67;

  String formattedPrice = price.toStringAsFixed(1);

  print("\nOriginal double: $price");
  print("Formatted String: $formattedPrice");
  print("Formatted type: ${formattedPrice.runtimeType}");
}