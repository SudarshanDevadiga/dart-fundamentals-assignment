import 'package:flutter/material.dart';

void main() {
  runApp(const DartFundamentalsApp());
}

class DartFundamentalsApp extends StatelessWidget {
  const DartFundamentalsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dart Fundamentals Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const AssignmentHomePage(),
    );
  }
}

class AssignmentHomePage extends StatelessWidget {
  const AssignmentHomePage({super.key});

  static const List<Map<String, String>> modules = [
    {
      'file': '01_variables.dart',
      'title': 'Variables & Data Types',
      'topics': 'var • dynamic • Object • final • const • Runes',
    },
    {
      'file': '02_collections.dart',
      'title': 'Collections & Conversions',
      'topics': 'List • Set • Map • Type Conversion',
    },
    {
      'file': '03_operators.dart',
      'title': 'Operators & Expressions',
      'topics': 'Arithmetic • Logical • Cascade • Type Tests',
    },
    {
      'file': '04_control_flow.dart',
      'title': 'Control Flow',
      'topics': 'if/else • Switch • Loops • break • continue • assert',
    },
    {
      'file': '05_functions.dart',
      'title': 'Functions & Scope',
      'topics': 'Parameters • Arrow Functions • Closures • First-Class',
    },
    {
      'file': '06_null_safety.dart',
      'title': 'Sound Null Safety',
      'topics': 'late • Never • ? • ?? • ??= • ?. • !',
    },
    {
      'file': '07_advanced_control_flow.dart',
      'title': 'Advanced Control Flow',
      'topics': 'Patterns • Sealed Classes • Destructuring • Labels',
    },
    {
      'file': '08_advanced_functions.dart',
      'title': 'Advanced Functions',
      'topics': 'Higher-Order Functions • Closures • State Isolation',
    },
    {
      'file': '09_advanced_null_safety.dart',
      'title': 'Advanced Null Safety',
      'topics': 'Late Errors • Never • Type Promotion • Null Chains',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dart Fundamentals',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dart Fundamentals Assignment',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Part A + Part B',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    '9 modules completed',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            // Module list
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  final module = modules[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                Theme.of(context)
                                    .colorScheme
                                    .primary,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  module['title']!,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                Text(
                                  module['file']!,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade600,
                                    fontFamily: 'monospace',
                                  ),
                                ),

                                const SizedBox(height: 6),

                                Text(
                                  module['topics']!,
                                  style: const TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Footer
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Part A: 01–06   •   Part B: 07–09',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}