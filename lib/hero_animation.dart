
import 'package:flutter/material.dart';

class ThumbnailScreen extends StatelessWidget {
  const ThumbnailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thumbnail Screen'),
      ),
      body: Column(
        children: [
          GridView.count(
            crossAxisSpacing: 15,
            crossAxisCount: 2,
            children: [
              Hero(
                tag: 'image1',
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FullScreenScreen(
                           imageAsset: 'assets/white_puma.jpg',
                          heroTag: 'image1',
                        ),
                      ),
                    );
                  },
                  child: Image.asset('assets/white_puma.jpg'),
                ),
              ),
              Hero(
                tag: 'image2',
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FullScreenScreen(
                          imageAsset: 'assets/red_nike.jpg',
                          heroTag: 'image2',
                        ),
                      ),
                    );
                  },
                  child: Image.asset('assets/red_nike.jpg',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class FullScreenScreen extends StatelessWidget {
  final String imageAsset;
  final String heroTag;

  const FullScreenScreen({super.key, required this.imageAsset, required this.heroTag});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: heroTag,
          child: Image.asset(imageAsset),
        ),
      ),
    );
  }
}
