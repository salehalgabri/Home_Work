import 'package:flutter/material.dart';

void main() {
  runApp(const WireframeApp());
}

class WireframeApp extends StatelessWidget {
  const WireframeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.blue.shade50,
                ),
                const SizedBox(height: 16),
          
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 24,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                
                Divider(color: Colors.grey.shade300, thickness: 1),
                const SizedBox(height: 12),
          
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(height: 60, color: Colors.green.shade300),
                          const SizedBox(height: 8),
                          Container(height: 60, color: Colors.green.shade300),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: Container(height: 128, color: Colors.orange.shade300)),
                          const SizedBox(width: 8),
                          Expanded(child: Container(height: 128, color: Colors.orange.shade300)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
          
                Row(
                  children: [
                    Expanded(child: Container(height: 100, color: Colors.purple.shade200)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        children: [
                          Container(height: 46, color: Colors.purple.shade300),
                          Container(height: 8, color: Colors.purple.shade100),
                          Container(height: 46, color: Colors.purple.shade300),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(child: Container(height: 100, color: Colors.purple.shade200)),
                    Expanded(child: Container(height: 100, color: Colors.purple.shade50)),
                  ],
                ),
                const SizedBox(height: 16),
          
                Row(
                  children: [
                    Expanded(child: Container(height: 60, color: Colors.teal.shade200)),
                    const SizedBox(width: 16),
                    Expanded(child: Container(height: 60, color: Colors.teal.shade300)),
                  ],
                ),
                const SizedBox(height: 16),
          
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}