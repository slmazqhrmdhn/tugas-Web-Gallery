import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image assets
    final List<String> imagePaths = [
      'asset/img/smkn4.jpg',
      'asset/img/pintu.jpg',
      'asset/img/pplg.png',
      'asset/img/tkro.png',
      'asset/img/pengelasan.jpg',
      'asset/img/TKJ.png',
      // Add more image paths as needed
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 109, 111, 156),
        title: const Text('Gallery moment SMKN 4 Bogor'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Space between columns
          mainAxisSpacing: 8.0, // Space between rows
          childAspectRatio: 1, // Aspect ratio of each grid item
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
