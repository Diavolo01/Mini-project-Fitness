import 'package:flutter/material.dart';

class AttachFilePage extends StatefulWidget {
  const AttachFilePage({super.key});

  @override
  _AttachFilePageState createState() => _AttachFilePageState();
}

class _AttachFilePageState extends State<AttachFilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attach File'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(width: 0.5, color: Colors.grey.shade400),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
