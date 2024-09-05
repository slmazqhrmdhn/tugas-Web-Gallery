import 'package:flutter/material.dart';

class AgendaScreen extends StatelessWidget {
  // Daftar agenda yang akan ditampilkan
  final List<String> agendas = [
    'Meeting with team at 10 AM',
    'Lunch with client at 12 PM',
    'Project deadline at 3 PM',
    'Call with supplier at 5 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 214, 231),
        title: const Text('Agenda'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildHeadsetCard('Pengenalan Pemrograman', '27 September 2024'),
          _buildHeadsetCard('Desain Wireframe dan Prototipe', '20 September 2024'),
          _buildHeadsetCard('NoSQL dan Database Non-Relasional', '5 September 2024'),
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
        leading: const Icon(Icons.event, size: 40.0),
      ),
    );
  }
}