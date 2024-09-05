// hal_headset.dart

import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 214, 231),
        title: const Text('Informasi 2024'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildHeadsetCard('Web Design', '27 September 2024'),
          _buildHeadsetCard('Pemrograman', '20 September 2024'),
          _buildHeadsetCard(' Ujian Database', '5 September 2024'),
        ],
      ),
    );
  }

  Widget _buildHeadsetCard(String title, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        leading: const Icon(Icons.info, size: 40.0),
      ),
    );
  }
}