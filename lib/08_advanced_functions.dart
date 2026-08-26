// ==========================================
// Helper class for required & optional
// named parameters
// ==========================================

class APIConfig {
  final String endpoint;
  final int timeoutSeconds;
  final bool enableLogs;

  APIConfig({
    required this.endpoint,
    this.timeoutSeconds = 30,
    this.enableLogs = false,
  });
}

// ==========================================
// 1. Positional + Optional Positional
// + Named Parameters
// ==========================================

void sendNotification(
  String recipient, {
  String message = "Default Hello",
  bool urgent = false,
  required String sender,
}) {
  print(
    'From: $sender -> To: $recipient | '
    'Msg: $message | Urgent: $urgent',
  );
}

// ==========================================
// 2. Higher-Order Function
// ==========================================

List<int> customMap(
  List<int> list,
  int Function(int) action,
) {
  List<int> result = [];

  for (var item in list) {
    result.add(action(item));
  }

  return result;
}

// ==========================================
// 3. Lexical Closure
// ==========================================

Function createCounter() {
  int count = 0;

  return () {
    count++;
    return count;
  };
}

// ==========================================
// Main
// ==========================================

void main() {
  // ==========================================
  // APIConfig
  // ==========================================

  APIConfig config = APIConfig(
    endpoint: "https://api.example.com",
  );

  print("API Endpoint: ${config.endpoint}");
  print("Timeout: ${config.timeoutSeconds}");
  print("Logs Enabled: ${config.enableLogs}");

  // ==========================================
  // 1. sendNotification
  // ==========================================

  sendNotification(
  "Alice",
  message: "Hello Alice!",
  sender: "Admin",
);

sendNotification(
  "Bob",
  message: "Urgent message!",
  urgent: true,
  sender: "System",
);

  // ==========================================
  // 2. customMap + Anonymous Arrow Function
  // ==========================================

  List<int> numbers = [1, 2, 3, 4, 5];

  List<int> squaredNumbers = customMap(
    numbers,
    (x) => x * x,
  );

  print("\nOriginal numbers: $numbers");
  print("Squared numbers: $squaredNumbers");

  // ==========================================
  // 3. Closure State Isolation
  // ==========================================

  Function counterA = createCounter();
  Function counterB = createCounter();

  print("\nCounter A: ${counterA()}");
  print("Counter A: ${counterA()}");

  print("Counter B: ${counterB()}");
}