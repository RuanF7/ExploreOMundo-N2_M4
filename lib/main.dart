import 'package:explore_o_mundo/banner_section.dart';
import 'package:flutter/material.dart';
import 'package:explore_o_mundo/buttonSection.dart';
import 'package:explore_o_mundo/pages/about_us_page.dart';
import 'package:explore_o_mundo/pages/contact_page.dart';
import 'package:explore_o_mundo/pages/destinations_page.dart';
import 'package:explore_o_mundo/pages/travel_packages_page.dart';
import 'package:explore_o_mundo/textSection.dart';
import 'package:explore_o_mundo/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mundo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/destinations': (context) => DestinationsPage(),
        '/travel_packages': (context) => TravelPackagesPage(),
        '/contact': (context) => ContactPage(),
        '/about_us': (context) => AboutUsPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Mundo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.place),
            onPressed: () {
              Navigator.pushNamed(context, '/destinations');
            },
          ),
          IconButton(
            icon: const Icon(Icons.airplanemode_active),
            onPressed: () {
              Navigator.pushNamed(context, '/travel_packages');
            },
          ),
          IconButton(
            icon: const Icon(Icons.contact_mail),
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/about_us');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          BannerSection(),
          TitleSection(),
          ButtonSection(),
          TextSection(), // Adicione a seção de título aqui
          // Adicione outras seções conforme necessário.
        ],
      ),
    );
  }
}
