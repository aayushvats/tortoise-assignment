import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart' show rootBundle;

class ProductCarousel extends StatefulWidget {
  final String productAsset;
  const ProductCarousel({super.key, required this.productAsset});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  List<String> _imagePaths = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  Future<void> _loadImages() async {
    List<String> paths = [];
    int i = 1;

    while (true) {
      final String path = 'assets/images/${widget.productAsset}$i.png';
      try {
        await rootBundle.load(path);
        paths.add(path);
        i++;
      } catch (e) {
        break;
      }
    }

    if (mounted) {
      setState(() {
        _imagePaths = paths;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 250,
      child: _imagePaths.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              height: 250,
              viewportFraction: 1.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, reason) {
                setState(() => _currentIndex = index);
              },
            ),
            items: _imagePaths.map((path) {
              return Image.asset(
                path,
                fit: BoxFit.fitHeight,
                width: double.infinity,
              );
            }).toList(),
          ),

          Positioned(
            bottom: 10,
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: _imagePaths.asMap().entries.map((entry) {
                  return Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? Colors.white
                          : Colors.white30,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
