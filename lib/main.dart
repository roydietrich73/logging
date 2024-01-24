
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Logging'),
        ),
        body: MyConsoleButtons(),
      ),
    );
  }
}

class MyConsoleButtons extends StatelessWidget {
  final Logger _logger = Logger();
  void printToConsole() {
    print('Diese Nachricht wird mit print() ausgegeben.');
  }

  void debugPrintToConsole() {
    debugPrint('Diese Nachricht wird mit debugPrint() ausgegeben.');
  }

  void logToConsole() {
    _logger.d('Diese Nachricht wird mit logger (debug) ausgegeben.');
    _logger.i('Diese Nachricht wird mit logger (info) ausgegeben.');
    _logger.w('Diese Nachricht wird mit logger (warn) ausgegeben.');
    _logger.e('Diese Nachricht wird mit logger (error) ausgegeben.');
    var logger = Logger();
    logger.d("Logger is working");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              printToConsole();
            },
            child: const Text('Print'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              debugPrintToConsole();
            },
            child: const Text('Debug Print'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              logToConsole();
            },
            child: const Text('Log'),
          ),
        ],
      ),
    );
  }
}