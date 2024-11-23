import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class TopCarouselSection extends StatefulWidget {
  const TopCarouselSection({super.key});

  @override
  State<TopCarouselSection> createState() => _TopCarouselSectionState();
}

class _TopCarouselSectionState extends State<TopCarouselSection> {

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselItem=[
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://i.ytimg.com/vi/5tnc_R1I2xA/maxresdefault.jpg',
            fit: BoxFit.cover,
            height: 150,
            width: MediaQuery.of(context).size.width-40,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://i.ytimg.com/vi/IbYjHUkNwHg/maxresdefault.jpg',
            fit: BoxFit.cover,
            height: 150,
            width: MediaQuery.of(context).size.width-40,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://i.ytimg.com/vi/kiIoydThaWo/maxresdefault.jpg',
            fit: BoxFit.cover,
            height: 150,
            width: MediaQuery.of(context).size.width-40,
          ),
        ),
      ),
    ];
    return Container(
      child: FlutterCarousel(
        items: carouselItem,
        options: FlutterCarouselOptions(
          height: 200,
          enableInfiniteScroll: true,
          viewportFraction: 0.8,
          autoPlay: true,
          showIndicator: false,
        ),
      ),
    );
  }
}
