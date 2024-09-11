import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarrosselPage extends StatelessWidget {
  const CarrosselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sugestões'),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            aspectRatio: 20/9,
            viewportFraction: 0.8,
          ),
          items: [
            'https://segredosdomundo.r7.com/wp-content/uploads/2017/09/56-fotos-de-animais-fofos-que-vao-fazer-voce-sorrir.jpg',
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FP%25C3%25A9&psig=AOvVaw0eGWDFFRxxEAafJUahkT2u&ust=1726097270531000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMD93NHDuYgDFQAAAAAdAAAAABAE',
            'https://via.placeholder.com/600x400?text=Imagem+3',
            'https://via.placeholder.com/600x400?text=Imagem+4',
          ].map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 300.00,
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 152, 7, 255),
                  ),
                  child: Image.network(url, fit: BoxFit.cover),
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
    home: CarrosselPage(),
  ));
}
