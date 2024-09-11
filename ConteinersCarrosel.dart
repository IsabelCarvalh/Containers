// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final List<Widget> containers = [
      Container(
        margin:const EdgeInsets.symmetric(horizontal: 5.0), // Espaço entre os containers
        color: const Color.fromARGB(255, 158, 54, 244), 
        height: 200,
        child: const Center(child: Text('Container 1')), 
      ),
      Container(
         margin:const EdgeInsets.symmetric(horizontal: 5.0), // Espaço entre os containers
        color: Colors.green,
        height: 200,
        child: const Center(child: Text('Container 2')),
      ),
      Container(
        margin:const EdgeInsets.symmetric(horizontal: 5.0), // Espaço entre os containers
        color: Colors.blue,
        height: 200,
        child: const Center(child: Text('Container 3')),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Carrossel de Containers')),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(height: 500.0,),//altura dos containers
          items: containers.map((container) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width:700, //largaura dos containers 
                  child: container,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyCarousel(),
  ));
}






