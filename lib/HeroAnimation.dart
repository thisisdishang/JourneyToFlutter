import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
            child: Hero(
              tag: 'background',
              child: Image.network(
                'https://w0.peakpx.com/wallpaper/663/660/HD-wallpaper-iron-man-minimal-iron-man-minimalism-minimalist-superheroes-digital-art-artist.jpg',
                width: 250,
                height: 250,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image.network(
              'https://w0.peakpx.com/wallpaper/663/660/HD-wallpaper-iron-man-minimal-iron-man-minimalism-minimalist-superheroes-digital-art-artist.jpg'),
        ),
      ),
    );
  }
}
