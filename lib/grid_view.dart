import 'dart:math';

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<Container> myList = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text('Grid View'),
      ),
      body: GridView(
        padding: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
          bottom: 20
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, 
            // ?Kanan Kiri
            crossAxisSpacing: 10, 
            // !Atas Bawah
            mainAxisSpacing: 10,
            childAspectRatio: 4/4,
        ),
        children: myList,
      ),
    );
  }
}
