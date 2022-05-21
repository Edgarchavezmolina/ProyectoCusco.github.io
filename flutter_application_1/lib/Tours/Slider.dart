// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sksl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List imagesPhotos = [
      'https://media.tacdn.com/media/attractions-splice-spp-360x240/0a/4a/87/12.jpg',
      'https://portal.andina.pe/EDPfotografia3/Thumbnail/2018/09/27/000534910W.jpg',
      'https://cdn.getyourguide.com/img/location/5c950a0cf3e0b.jpeg/88.jpg'
    ];
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Center(
          child: CarouselSlider.builder(
        options: CarouselOptions(height: 300),
        itemCount: imagesPhotos.length,
        itemBuilder: (context, index, realIndex) {
          // ignore: non_constant_identifier_names
          final Imgfotos = imagesPhotos[index];
          return buildImage(Imgfotos, index);
        },
      )),
    );
  }

  Widget buildImage(String imagesPhotos, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          imagesPhotos,
          fit: BoxFit.cover,
        ),
      );
}
