import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerSection extends StatefulWidget {
  @override
  _BannerSectionState createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<String> images = [
    'images/lake.jpeg',
    'images/buzios.webp',
    'images/patagonia.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Altura do banner, ajuste conforme necessário
      child: CarouselSlider(
        items: images.map((imagePath) {
          return buildBannerItem(imagePath);
        }).toList(),
        options: CarouselOptions(
          height: 200,
          enableInfiniteScroll: true,
          viewportFraction: 1.0,
          autoPlay: true,
          onPageChanged: (index, reason) {
            // Adicione aqui qualquer lógica desejada ao mudar de página
          },
        ),
      ),
    );
  }

  Widget buildBannerItem(String imagePath) {
    return GestureDetector(
      onTap: () {
        // Navegue para a página correspondente à imagem clicada
        navigateToDestinationPage(imagePath);
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Explore o Destino', // Você pode personalizar esse texto conforme necessário
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void navigateToDestinationPage(String imagePath) {
    // Navegue para a página de destaque (pode ser uma página separada ou a mesma)
    Navigator.pushNamed(context, '/destinations');
  }
}
