import 'package:flutter/material.dart';

class Model extends StatelessWidget {
  Model({Key? key});

  final List<Map<String, dynamic>> modelList = [
    {
      'image': './assets/1.jpg',
      'description': 'Model Fade',
    },
    {
      'image': './assets/2.jpg',
      'description': 'Model Pompadour',
    },
    {
      'image': './assets/3.jpg',
      'description': 'Model Buzz',
    },
    {
      'image': './assets/4.jpg',
      'description': 'Model Comma Hair',
    },
    {
      'image': './assets/5.jpg',
      'description': 'Model Two Block',
    },
    {
      'image': './assets/6.jpg',
      'description': 'Model UnderCut',
    },
    {
      'image': './assets/7.jpg',
      'description': 'Model Low Fade',
    },
    {
      'image': './assets/8.jpg',
      'description': 'Model French Crop',
    },
    {
      'image': './assets/9.jpg',
      'description': 'Model Edgar',
    },
    {
      'image': './assets/10.jpg',
      'description': 'Model Ikal',
    },
    {
      'image': './assets/11.jpg',
      'description': 'Model Faux Hawk',
    },
    {
      'image': './assets/12.jpg',
      'description': 'Model Ronaldo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        title: Container(
          child: Text(
            'Model Rambut',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: 45),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              runSpacing: 16,
              children: modelList.map((model) {
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          model['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      model['description'],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
